# CUPS Printer Driver Setup (Linux)

This guide sets up CUPS and printer drivers on this computer and keeps the process reproducible.

## 1) Install required packages

Arch Linux / Arch-based:

```sh
sudo pacman -S --needed cups cups-pdf ghostscript gsfonts gutenprint nss-mdns avahi system-config-printer
```

cups-browsed: to browse the network for remote CUPS queues and IPP network printers
    libusb: for usb printer backend [installed]
    ipp-usb: allows to send HTTP requests via a USB connection on devices without Ethernet or WiFi
    connections
    xdg-utils: xdg .desktop file support [installed]
    colord: for ICC color profile support
    logrotate: for logfile rotation support

Install vendor-specific drivers only if needed:

```sh
# HP
sudo pacman -S --needed hplip

# Epson (example)
sudo pacman -S --needed epson-inkjet-printer-escpr

# Brother
# Use the model-specific package from AUR (via yay), for example:
yay -S brother-dcp1610w
```

## 2) Enable and start CUPS discovery services

```sh
sudo systemctl enable --now cups.service
sudo systemctl enable --now avahi-daemon.service
```

Validate services:

```sh
systemctl status cups.service --no-pager
systemctl status avahi-daemon.service --no-pager
```

## 3) Discover printers and drivers

List printer connection URIs:

```sh
lpinfo -v
```

List available PPD/models and filter by vendor/model:

```sh
lpinfo -m | rg -i "hp|brother|epson|canon"
```

If your printer supports driverless IPP/AirPrint, prefer `ipp://` or `ipps://` queues.

## 4) Add printer (web UI, recommended)

1. Open [http://localhost:631](http://localhost:631)
2. Go to **Administration** -> **Add Printer**
3. Select detected printer/URI
4. Choose:
   - **Driverless (IPP Everywhere/AirPrint)** when available, or
   - the exact vendor/model driver from installed packages
5. Print a test page from the printer settings page

## 5) Add printer (CLI alternative)

Replace placeholders (`PRINTER_NAME`, `DEVICE_URI`, `PPD_OR_MODEL`) with real values from `lpinfo`.

```sh
sudo lpadmin -p PRINTER_NAME -E -v DEVICE_URI -m PPD_OR_MODEL
sudo lpoptions -d PRINTER_NAME
lpstat -p -d
```

## 6) Verify printing

```sh
echo "CUPS test page from $(hostname) on $(date)" | lp -d PRINTER_NAME
lpq -P PRINTER_NAME
```

## 7) Troubleshooting

- **Printer not discovered on network**
  - Ensure same subnet and that `avahi-daemon.service` is running
  - Retry discovery: `avahi-browse -rt _ipp._tcp`
- **Filter failed / blank pages**
  - Install proper vendor driver package (HP/Brother/Epson)
  - Check logs: `journalctl -u cups -b --no-pager`
- **Permission/auth prompts in web UI**
  - Use your admin account when prompted
  - If needed, verify group memberships: `id`
- **Queue stuck**
  - Clear and re-enable:
    ```sh
    sudo cancel -a PRINTER_NAME
    sudo cupsenable PRINTER_NAME
    sudo cupsaccept PRINTER_NAME
    ```

## 8) Useful commands

```sh
# Show all printers
lpstat -t

# Show CUPS config files
ls /etc/cups

# Restart CUPS after config changes
sudo systemctl restart cups
```

## Notes

- Prefer driverless printing first; install vendor drivers only when needed.
- Keep printer names simple (for example, `home-laser`).
- For scanners/MFP devices, separate SANE setup may also be required.
