
CATCOMMAND ___________________

cat > file1.txt (create empty file cntrl+d to save and exit)
cat >> file1.txt (append data in file )
echo content | cat file1.txt ( overwrite the data of a file )
cat filename ( simple read the content )

TOUCHCOMMAND __________________________
Majorly used for the time stemp 
TIME STAMP : Access time ( touch -a)
           : Modified time ( touch -m )
           : Change time 
stat filename (check time stemp)

#touch command 
touch filename (create file )
touch file1 file2 file3  (multi file )
touch file{1..8} ( multi file )
touch filename (already existing file time stemp will update )
touch -a filename (only acces time will change )|
touch -m filename ( only modified time will change)
touch -t 202502171200.00 filename.txt (set speacific time )

USERMANAGEMENT__________________________
# add user 
sudo useradd username ( add user ) { low level less interactive manual no automatic home dir d}
sudo adduser username (add user ) { more interactive and automatic create home dir }
cat /etc/passwd (check users )
whoami (check current user )
sudo passwd username ( chnage or update user password )

# add new group 
sudo groupadd groupname 
# check groups 
cat /etc/group

# add user in group 
sudo useradd -aG groupname username 

# remove a user from a group 
sudo gpasswd -d username groupname 

PASSWORDMANAGEMENT______________________________

#check password details for a user 
sudo chage -l username 

#change password expiration date 
sudo chage -M <days> <username>

#lock user prevent login
sudo usermod -L username

# unlock 
sudo usermod -U username

#open passwd file in safe edditor 
sudo vipw 

# deleate password
sudo passwd -d  username 

#min max expiration days of password 
sudo chage -m <min_days> -M <max_days> <username>

FILEMANAGEMENT__________________________________
#file system info 
df -Th

# get details 
ls -ltr 

#move
mv file_name /destination/
#copy 
cp filename /destination/

# change file permission 
chmod <num> <filename>

#chnage ownership user
chown username filename
chown -R user:group /path/to/directory(recursive)
chown -v user:group filename (verbose command )
#change group 
chown :groupname filename 
sudo chgrp <group_name> <file_name>

#find command 
find /path/to/directory -type f  # Find regular files
find /path/to/directory -type d  # Find directories
find /path/to/directory -type l  # Find symbolic links
find /path/to/directory -size +1M  # Files larger than 1 MB
find /path/to/directory -size -100k  # Files smaller than 100 KB
find /path/to/directory -mtime -7  # Files modified in the last 7 days

# grep command 
ls -ltr | grep pattern 
#locate command 
locate filename 

TEXTMANAGEMENT--------------------------------------

#sed command 
sed 's/old_text/New_text' filename (temp change )

sed 's/













