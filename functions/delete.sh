delete='echo "| deleting $nomore |"; rm "./$nomore.cfg";'
nodontdoit='source ./functions/delete.sh'

echo " ------- "
echo " Delete Mode "
echo " ------- "
echo " Type the name of a config to delete it or type (q)uit to go back"
read nomore
case $nomore in
    [Qq]|[Qq][Uu][Ii][Tt]) $quit ;;
    *)
esac
echo " ------- "
confirm=""
while [ -z "$confirm" ] || [[ ! $confirm =~ ^([yY][eE][sS]|[yY]|[nN][oO]|[nN])$ ]]; do
    read -p "Are you sure you want to delete the config? (y/n) " confirm
done

case $confirm in
    [yY]|[yY][eE][sS])
        eval "$delete"
        ;;
    [nN]|[nN][oO])
        eval "$nodontdoit"
        ;;
esac
