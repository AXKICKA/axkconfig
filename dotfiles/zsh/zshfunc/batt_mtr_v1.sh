#!/usr/bin/env zsh

# Uses JetBrains Mono Nerd Font for the battery icon, Other Nerd Fonts may work
function batt_mtr_v1() {
  # Get the battery percentage
  battery_percent=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)

  # Set the battery icon based on the percentage
  case "$battery_percent" in
    0|1|2|3|4|5|6|7|8|9|10)
      icon=""
      color="\033[38;5;197m" # Red
      ;;
    11|12|13|14|15|16|17|18|19|20)
      icon=""
      color="\033[38;5;197m" # Red
      ;;
    21|22|23|24|25|26|27|28|29|30)
      icon=""
      color="\033[38;5;197m" # Red
      ;;
    31|32|33|34|35|36|37|38|39|40)
      icon=""
      color="\033[38;5;227m" # Yellow
      ;;
    41|42|43|44|45|46|47|48|49|50)
      icon=""
      color="\033[38;5;227m" # Yellow
      ;;
    51|52|53|54|55|56|57|58|59|60)
      icon=""
      color="\033[38;5;227m" # Yellow
      ;;
    61|62|63|64|65|66|67|68|69|70)
      icon=""
      color="\033[38;5;227m" # Yellow
      ;;
    71|72|73|74|75|76|77|78|79|80)
      icon=""
      color="\033[38;5;047m" # Green
      ;;
    81|82|83|84|85|86|87|88|89|90)
      icon=""
      color="\033[38;5;047m" # Green
      ;;
    91|92|93|94|95|96|97|98|99|100)
      icon=""
      color="\033[38;5;047m" # Green
      ;;
  esac
# Print the results with the designated color
  echo "${color}$icon $battery_percent%"
}

# Test the function
batt_mtr_v1
