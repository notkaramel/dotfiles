# fail2ban — SSH DDoS Protection (Arch Linux)

## Overview

fail2ban monitors authentication logs and bans IPs that show malicious signs (too many failed logins, DDoS patterns). This setup uses the `ddos` filter mode for SSH, incremental banning, and systemd as the log backend (correct for Arch).

## Installation

```bash
sudo pacman -S fail2ban
sudo systemctl enable --now fail2ban
```

## Configuration

Create `/etc/fail2ban/jail.d/sshd.local`:

```ini
[sshd]
enabled   = true
mode      = ddos
backend   = systemd
port      = ssh
maxretry  = 5
findtime  = 60
bantime   = 3600
bantime.increment = true
bantime.factor    = 2
bantime.maxtime   = 604800
ignoreip  = 127.0.0.1/8 ::1
```

> If SSH runs on a non-standard port, replace `port = ssh` with the actual port number.

### Settings explained

| Setting | Value | Meaning |
|---|---|---|
| `mode` | `ddos` | Stricter filter that catches flood/DDoS patterns in addition to brute-force |
| `backend` | `systemd` | Reads from journald — correct for Arch (no log files needed) |
| `maxretry` | `5` | Ban after 5 failed attempts |
| `findtime` | `60s` | Failure window — counts failures within this period |
| `bantime` | `3600s` | Initial ban duration (1 hour) |
| `bantime.increment` | `true` | Ban duration increases for repeat offenders |
| `bantime.factor` | `2` | Each repeat offense doubles the ban time |
| `bantime.maxtime` | `604800s` | Maximum ban duration (7 days) |
| `ignoreip` | loopback | Never ban localhost |

## Applying changes

After editing any config:

```bash
sudo fail2ban-client -t          # test config validity
sudo systemctl restart fail2ban  # apply
```

## Usage

```bash
# Check jail status and current bans
sudo fail2ban-client status sshd

# Manually ban an IP
sudo fail2ban-client set sshd banip 1.2.3.4

# Unban an IP
sudo fail2ban-client set sshd unbanip 1.2.3.4

# Watch live fail2ban logs
sudo journalctl -u fail2ban -f
```

## How incremental banning works

Each time an IP is banned and re-offends, the ban duration multiplies:

| Offense | Ban duration |
|---|---|
| 1st | 1 hour |
| 2nd | 2 hours |
| 3rd | 4 hours |
| ... | doubles each time |
| max | 7 days |

## Verifying it works

```bash
sudo fail2ban-client status sshd
```

Expected output shows `Currently failed`, `Total failed`, and `Banned IP list`. The journal backend line should read:

```
Journal matches: _SYSTEMD_UNIT=sshd.service + _COMM=sshd
```
