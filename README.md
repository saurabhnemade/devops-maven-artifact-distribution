# devops-maven-artifact-distribution
A Simple Maven Assembly Plugin and Distribution example with local nexus docker instance

# Deploying Snapshots
```bash
mvn --settings settings.xml deploy
```

# Deploying Release Version

```bash
mvn versions:set -DremoveSnapshot
mvn versions:commit
mvn --settings settings.xml deploy
```

# Auto Increment Snapshot versions

With gitbash:
```bash
mvn build-helper:parse-version versions:set -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion}-SNAPSHOT versions:commit
```

With windows command prompt:
```bash
mvn build-helper:parse-version versions:set -DnewVersion=${parsedVersion.majorVersion}.${parsedVersion.minorVersion}.${parsedVersion.nextIncrementalVersion}-SNAPSHOT versions:commit
```
