#/bin/bash
echo "/root/.jenkins/workspace/icici-funds/target/"
cd /root/.jenkins/workspace/icici-funds/target/
echo "ls -lrt"
ls -lh 
artifact_file_name=`ls *.war`
echo "file name: $artifact_file_name"
curl -u jenkins:Chandra@2835 -X PUT "http://65.2.177.248:8081/artifactory/libs-snapshot/$JOB_NAME/$artifact_file_name" -T $artifact_file_name

