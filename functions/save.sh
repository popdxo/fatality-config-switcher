echo " ------- "
echo " Save Mode "
echo " ------- "
echo " what is this config's name (or type quit to go back)
 Pre-existing names will overight them."
read name
case $name in
    [Qq]|[Qq][Uu][Ii][Tt]) $quit ;;
    *)

echo "| saving $name |"

cp "$cs2Location/game/bin/win64/fatal_settings.cfg" "../$name.cfg"

source ./save.sh

esac