cat "NameofFile" #Write content of this file
head 5 "NameofFile" #Show the first 5 lines of this file
tail 5 "NameofFile" #Show the last 5 lines of this file 
wc -l "NameofFile" #Count the number of rows in the file

LOG=folderA/folderB/NameofFile #create a variable name "LOG" to contain the path and the content of "NameofFile"
echo $LOG #"echo" to write the vaule and "$" infront to call or use the variable

grep "Example" $LOG #Show every line that have only 'Example'
grep -n "Example" $LOG #Same as above but its show the number of line
grep -c "Example" $LOG #Count the number of line that have 'Example' and the output is number ex.grep -c ... -> 6
grep -v "Example" $LOG #'-v' its mean invert, and show every line that not have 'Example'
grep -i "Example" $LOG #ignore case, ex.if you write 'grep -i "example" or "EXAMPLE"' it will show every line that have "Example"

Pipe -> " | " #output of the first command is input of the next command
ex1) grep "ERROR" $LOG | wc -l
5
ex2) grep "2026-11-17" $LOG | grep "load" #show the line that contain word 'load', so it will conflict with word like 'download'
2026-11-17 02:00:10 INFO [load] Writing to warehouse table daily_sales
2026-11-17 02:00:15 ERROR [load] Connection timeout to warehouse
2026-11-17 02:00:20 INFO [load] Retry 1/3
2026-11-17 02:00:25 ERROR [load] Connection timeout to warehouse
2026-11-17 02:00:30 INFO [load] Retry 2/3
2026-11-17 02:00:35 ERROR [load] Connection timeout to warehouse
2026-11-17 02:00:40 INFO [load] Retry 3/3
2026-11-17 02:00:45 ERROR [load] Max retries reached, aborting
ex2.1) grep "2026-11-17" $LOG | grep -F "[load]"
if you want only "load" you can use -F
ex2.2) grep "2026-11-17" $LOG | grep "[load]"
if you not write -F it will show every line that contain 'l', 'o', 'a', 'd'
Tips) 'grep -n -v' can write in this form -> 'grep -nv'

cp "source" "destination" #copy
ex) cp folderA/fileA folderB/fileB

touch folderA/NameofFile.txt #create an empty file

mv "source" "destination" #move or rename
ex)mv folderA/NameofFile.txt folderA/Test.txt #rename
mv folderA/NameofFile.txt folderB/NameofFile.txt #move

rm "NameofFile" #remove
ex) rmdir "NameofFolder" #remove folder
rm -i folderA/NameofFile.txt #asking you before remove it

-r #do with the folder and everything inside
ex)cp -r

-i #to ask you before doing, you can use with 3 commands above
