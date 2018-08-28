# devops-maven-artifact-distribution
A Simple Maven Assembly Plugin and Distribution example with local nexus docker instance

#Deploying Snapshots
mvn --settings settings.xml deploy


#Deploying Release Version
mvn versions:set -DremoveSnapshot
mvn versions:commit
mvn --settings settings.xml deploy
