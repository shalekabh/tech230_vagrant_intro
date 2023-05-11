# Git commands and examples

- Touch creates a file
- Touch example.exe
- Touch dog.jpeg
- You can change file types (in name only) or move a file with the “mv” command
- Mv dog.jpeg dog.txt = dog.txt
- Sudo nano <file> (text editor like vim) (if you put a file name that doesn’t exist it will create the file and open it)
- Crtl x to save in nano
- Mkdir <folder name> to create folder 
- Rm <file name> to remove a file
- Rm -rf deletes everything <folder>
- To make a file hidden or folder, put a dot before the name <.folder_name>
- Ls -a = ls -all
- Ls – l shows permissions
- Chmod = set permissions
- Chmod u+x = set user for execute
- Chmod g+x = for group
- head prints out the first 10 lines
- head -1, -2, -3, prints out 1, 2 or 3 lines
- tail prints out last 10 lines
- tail -1, -2, -3, prints out the last 1, 2 or 3 lines
- sort <example.txt> will alphanumerically sort the contents of your file input
- nl <example.txt> will bring back the number of lines
- wc(-l, -w) <example.txt> will bring back line, word and letter count
- | this line is called a pipe and it chains commands together
- grep finds keywords e.g grep hello bring back "hello"
- grep hello world will not work because its a string of word. you will need to wrap them in quotation marks - grep "hello world"
- top brings the hardware and cpu youre using up in a live format
- ps aux does the same as top but as a snapshot not live.
- kill <PID> kills a running a process you are the owner of
- kill -9 <PID> force kills
- fg brings a background process into the foreground


A foreground process, runs things in the forgroung of the terminal and takes away your control and to regain control you have to enter an exit command, usually ctrl+z or c, or :q or q .
