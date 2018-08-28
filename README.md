# devops-maven-artifact-distribution
A Simple Maven Assembly Plugin and Distribution example with local nexus docker instance

# Deploying Snapshots
mvn --settings settings.xml deploy


# Deploying Release Version

mvn versions:set -DremoveSnapshot
mvn versions:commit
mvn --settings settings.xml deploy

# Auto Increment Snapshot versions

mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion}-SNAPSHOT versions:commit
