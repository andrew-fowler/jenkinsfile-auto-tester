# jenkinsfile-auto-tester

This is a convenience script to help speed up the development and testing of jenkinsfile pipelines.

# Setup
Make the scripts executable & install nodemon.
```
chmod +x pipeline-replay.sh
chmod +x watch-jenkinsfile.sh
npm install -g nodemon
```

Modify the pipeline-replay.sh script to use valid values for `JENKINS_URL`, `JENKINS_USERNAME`, `JENKINS_API_TOKEN`, `REPO_NAME`, `BRANCH_NAME`, `FULL_PATH_TO_JENKINS_CLI_JAR`.

The Jenkins CLI can be downloaded directly from your Jenkins instance.  E.g. jenkins-cli.jar can be downloaded from your jenkins instance e.g. https://jenkins.example.com/jnlpJars/jenkins-cli.jar

Change the `-n 1` argument to refer to the branch build number that you want to use for the pipeline changeset.  E.g. is you go to the branches Jenkins page, the build numbers are shown listed on the left.

# Execution

To run the watcher, just run `./watch-jenkinsfile.sh`.  Now, whenever a change is saved to the Jenkinsfile it will execute in Jenkins and stream the build log to your terminal, without making any changes to your remote.