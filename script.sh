#Deploying Snapshots
mvn --settings settings.xml deploy


#Deploying Release Version
mvn versions:set -DremoveSnapshot
mvn versions:commit
mvn --settings settings.xml deploy
