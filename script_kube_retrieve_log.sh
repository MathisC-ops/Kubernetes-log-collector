# Exporting logs
DATE=$(date +"%d-%m-%y")
POD=$(kubectl --context=$CONTEXT --namespace "$NAMESPACE" get po |grep "$MY_APP" |awk '{print $1}')
kubectl --namespace $NAMESPACE logs --since=1m $POD --context=$CONTEXT >> /var/log/$MY_APP-logs_$DATE.log

# Cleanup
YESTERDAY_DATE=$(date --date=' 1 days ago' '+%d-%m-%y')
YESTERDAY_FILE="/var/log/$MY_APP-logs_$YESTERDAY_DATE.log"
rm $YESTERDAY_FILE 2> /dev/null