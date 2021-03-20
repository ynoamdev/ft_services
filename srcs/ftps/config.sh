apk add shadow coreutils
useradd -m -p ftpuser ftpuser
mkdir /home/ftpuser/ftp_dir
chmod -R 750 /home/ftpuser/ftp_dir/
chown -R ftpuser: /home/ftpuser/ftp_dir
touch /etc/vsftpd.userlist
echo ftpuser >> /etc/vsftpd.userlist