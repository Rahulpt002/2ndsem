echo "Menu:"
echo "a) Display ordinary files"
echo "b) Display all directory files"
echo "c) Display all readable files"
echo "d) Display all files with permissions for ugo"
echo "e) Display all executable files with permissions for ugo"
echo "f) Display all writable files with permissions for ugo"
echo "q) Quit"

while :; do
    read -p "Enter your choice (a-f or q): " choice

    case "$choice" in
        a) echo "Ordinary files:"
           find . -type f
           ;;
        b) echo "All directory files:"
           find . -type d
           ;;
        c) echo "All readable files with permission for ugo:"
           find . -type f -perm /ugo+r
           ;;
        d) echo "All files sith special:"
           find . -type l -o -type s -o -type p


           ;;
        e) echo "All executable files with permissions for ugo:"
           find . -type f -perm /ugo+x
           ;;
        f) echo "All writable files with permissions for ugo:"
           find . -type f -perm /ugo+w
           ;;
        q) echo "Exiting..."
           exit
           ;;
        *) echo "Invalid option. Please choose a valid option (a-f or q)."
           ;;
    esac
done
