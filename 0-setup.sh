# Change Keyboard Layout

ls /usr/share/kbd/keymaps/**/*.map.gz
echo ""
read -p "Enter your keyboard layout: " LAYOUT
loadkeys $LAYOUT || echo "Invalid Layout"




