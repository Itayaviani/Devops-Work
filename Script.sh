#!/bin/bash

# פונקציה להדפיס את סדרת פיבונאצ'י עד למספר נתון
generate_fibonacci() {
    limit=$1
    a=0
    b=1

    echo "<html><body><h1>סדרת פיבונאצ'י עד $limit</h1><p>$a"

    while [ "$b" -le "$limit" ]; do
        echo -n ", $b"
        temp=$b
        b=$((a + b))
        a=$temp
    done

    echo "</p></body></html>"
}

# בדיקה אם הוזן קלט
if [ -z "$1" ]; then
    echo "שגיאה: נא להכניס מספר כפרמטר"
    exit 1
fi

# בדיקה אם הקלט הוא מספר תקף
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "שגיאה: נא להכניס מספר תקף"
    exit 1
fi

# קריאה לפונקציה להפקת סדרת פיבונאצ'י
generate_fibonacci "$1"
