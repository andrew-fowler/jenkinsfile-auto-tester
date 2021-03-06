#!/usr/bin/env bash

URL=JENKINS_URL
CREDS=JENKINS_USERNAME:JENKINS_API_TOKEN
JOB=REPO_NAME/BRANCH_NAME
CLI_PATH=FULL_PATH_TO_JENKINS_CLI_JAR

jenk="java -jar $CLI_PATH -auth $CREDS -http -s $URL"

cat Jenkinsfile | $jenk declarative-linter &&
cat Jenkinsfile | $jenk replay-pipeline $JOB -n 1 &&
$jenk console $JOB -f
