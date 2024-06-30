#!/bin/bash

# פונקציה להדפיס את סדרת פיבונאצ'י עד למספר נתון
print_fibonacci() {
    limit=$1
    a=0
    b=1
    
    echo -n "סדרת פיבונאצ'י עד $limit: $a"
    
    while [ "$b" -le "$limit" ]; do
        echo -n ", $b"
        temp=$b
        b=$((a + b))
        a=$temp
    done
    
    echo
}

# קלט מהמשתמש
read -p "הכנס מספר: " input

# בדיקה אם הקלט הוא מספר תקף
if ! [[ "$input" =~ ^[0-9]+$ ]]; then
    echo "שגיאה: נא להכניס מספר תקף"
    exit 1
fi

# קריאה לפונקציה להדפסת סדרת פיבונאצ'י
print_fibonacci "$input"
