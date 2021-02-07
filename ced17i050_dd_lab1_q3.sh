#! /bin/sh

FILE=/home/rahul/Desktop/download.out
FILE1=/home/rahul/Desktop/web

# the url to retrieve
URL=https://www.youtube.com/

# write header information to the log file
start_date=`date`
echo "START-------------------------------------------------" >> $FILE
echo "" >> $FILE

# retrieve the web page using curl. time the process with the time command.
curl $URL > $FILE1

echo "" >> $FILE
end_date=`date`
echo "STARTTIME: $start_date" >> $FILE
echo "END TIME:  $end_date" >> $FILE
echo "" >> $FILE