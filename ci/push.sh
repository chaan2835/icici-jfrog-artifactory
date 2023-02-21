#/bin/bash
echo "/root/.jenkins/workspace/icici-build-sonartest-docker/target"
cd /root/.jenkins/workspace/icici-build-sonartest-docker/target
echo "ls -lrt"
ls -lhrt 
artifact_file_name=`ls *.war`
echo "file name: $artifact_file_name"
curl -u jenkins:Chandra@2835 -X PUT "http://65.2.177.248:8081/artifactory/libs-snapshot/$JOB_NAME/$artifact_file_name" -T $artifact_file_name

