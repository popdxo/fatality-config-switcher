clear
source ../settings
echo "
warning: i suck at making stuff so use with caution
 ________________________________________________________________
/  ____________________________________________________________  \\ 
| |      _____ _____ __ __ _____ _____ _____ _____ _____ _____ | | 
| |     / ___// _  // |/ // ___//_ __//    //    // ___// _  / | | 
| |    / /   / // //    // /__   //  / /__// /__// /__ / // /  | | 
| |   / /   / // //    // ___/  //  / /_ // /_ // ___// ___/   | | 
| |  / /__ / // //    // /   __//_ / /_/// /_/// /__ /   \     | | 
| | /____//____//_/|_//_/   /____//____//____//____//_/__/     | | 
| |____________________________________________________________| | 
\________________________________________________________________/ 
                                                                   
 -------
 CS2 path"
echo " $cs2Location
 -------
 configs"
# Check if there are any .cfg files in the ../ directory. if there are then they get printed. Otherwise a message says there arent
if ls ./*.cfg &> /dev/null; then
    ls ./*.cfg | sed 's/.cfg//' | xargs -I {} basename {}
else
    echo "No configs saved"
fi
echo " ------- "

# Variables to do something
load="source ./load.sh"
save="source ./save.sh"
delete="source ./delete.sh"

# Variables for scripts
quit="source ./script.sh"

echo "select the mode using the corresponding number or name"
echo " (1: Load) (2: Save) (3: Delete)"
read mode;
case $mode in
    1|[Ll][Oo][Aa][Dd]) $load ;;
    2|[Ss][Aa][Vv][Ee]) $save ;;
    3|[Dd][Ee][Ll][Ee][Tt][Ee]) $delete ;;
    *) echo "NOT AND OPTION"
    sleep 2
esac
