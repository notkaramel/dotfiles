systemctl --user restart mako
notify-send "Mako restarted"
sleep 2

# Test simple notification
notify-send "Test Notification" "This is a simple notification."
sleep 2

# Test different urgency levels
notify-send -u low "Low Urgency" "This is a low urgency notification."
sleep 1
notify-send -u normal "Normal Urgency" "This is a normal urgency notification."
sleep 1
notify-send -u critical "High Urgency" "This is a high urgency notification."
sleep 2

# Test notification with icon
notify-send -i dialog-information "With Icon" "This notification has an icon."
sleep 2

# Test notification in custom category
notify-send -c mpd "MPD Category" "This notification tests the mpd category."
sleep 2

# Test notification with short timeout (only applies if ignore-timeout is not set)
notify-send -t 1000 "Short Timeout" "This should disappear quickly."
sleep 2

# Test notification with long timeout
notify-send -t 10000 "Long Timeout" "This should stay longer."
sleep 2

# Test multi-line body
notify-send "Multiline Test" "Line 1
Line 2
Line 3"
sleep 2

# Test width - intentionally long title/body to check wrapping
notify-send "Long Notification Title Testing Wrapping In Mako Notification System" "This is a long notification body to see how the text gets wrapped and how it looks in the mako notification window. The width limit should prevent overflow."
sleep 2

# Test notification with unicode/emojis
notify-send "Emoji 🚀 Test" "This notification contains emojis 🎉👍"
sleep 2

# Test multiple notifications in quick succession
for i in $(seq 1 5); do
    notify-send "Batch Test $i" "This is notification number $i"
    sleep 1
done
sleep 2

# Test notification that should persist (critical urgency and normal has default-timeout=0 in some configs)
notify-send -u critical "Persistent Notification" "This notification should not timeout automatically."
sleep 3
