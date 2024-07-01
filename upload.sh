A=$(find $1 -type f)
url=$2

for file in $A;
do
curl -T $file -u admin:1234  $url/upload/$file
echo $file is uploaded.
done
