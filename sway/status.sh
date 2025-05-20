#!/bin/bash
while true; do
  # Get battery percentage (works for most Linux systems)
  battery=$(acpi -b 2>/dev/null | grep -Po '\d+%' || echo "N/A")
  
  # Get date/time without seconds (format: YYYY-MM-DD HH:MM)
  datetime=$(date +'%Y-%m-%d %H:%M')
  
  # Combine outputs with clean formatting
  echo "|BAT:$battery|$datetime|"
  
  sleep 30  # Update every 30 seconds (adjust as needed)
done
