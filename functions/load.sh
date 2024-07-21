echo " ------- "
echo " Load Mode "
echo " ------- "
echo " Type the name of a config to apply it or type (q)uit to go back"
read config
case $config in
    [Qq]|[Qq][Uu][Ii][Tt]) $quit ;;
    *)

echo "| selecting $config |"
cp "./$config.cfg" "$cs2Location/game/bin/win64/fatal_settings.cfg"

source ./functions/load.sh
esac