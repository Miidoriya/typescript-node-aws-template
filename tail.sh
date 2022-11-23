# tail logs and print output
while true; do
awslocal logs tail "$1" --format short --since 1s
sleep 1
done