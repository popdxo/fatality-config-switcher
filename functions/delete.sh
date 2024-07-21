delete='echo "| deleting $nomore |"; rm "../$nomore.cfg";'
nodontdoit='source ./delete.sh'

echo " ------- "
echo " Delete Mode "
echo " ------- "
echo " Type the name of a config to delete it (or type quit to go back)"
read nomore
case $nomore in
    [Qq]|[Qq][Uu][Ii][Tt]) $quit ;;
    *)
esac
echo " ------- "
echo " you sure you wanna do this?
 type (y)es or (n)o "
read confirm

case $confirm in
    [yY]|[yY][eE][sS])
        eval "$delete"
        ;;
    [nN]|[nN][oO])
        eval "$nodontdoit"
        ;;
esac