#!/bin/bash

INTERVAL_MINUTES=${INTERVAL_MINUTES:-15}
LOG_FILE="/data/reminder.log"

mkdir -p /data

echo "=================================" | tee -a "$LOG_FILE"
echo "💧 HYDRAPING - Lembrete de Hidratação" | tee -a "$LOG_FILE"
echo "=================================" | tee -a "$LOG_FILE"
echo "⏰ Intervalo: ${INTERVAL_MINUTES} minutos" | tee -a "$LOG_FILE"
echo "🚀 HydraPing iniciado!" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

while true; do
    TIMESTAMP=$(date "+%d/%m/%Y %H:%M:%S")

    echo "💧 Hora de beber água! | $TIMESTAMP" | tee -a "$LOG_FILE"

    sleep $((INTERVAL_MINUTES * 60))
done
