#!/bin/bash

LOG_FILE="$HOME/hydraping/data/reminder.log"

echo "🔔 HydraPing Notification Service"
echo "📄 Monitorando: $LOG_FILE"
echo ""

touch "$LOG_FILE"

tail -n 0 -F "$LOG_FILE" | while read -r line; do
    if [[ "$line" == *"💧 Hora de beber água!"* ]]; then
        notify-send \
            --app-name="HydraPing" \
            "HydraPing 💧" \
            "Hora de beber água!"
    fi
done
