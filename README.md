# docker-rally

docker run -it snowhigh/docker-rally bash

source admin-openrc.sh

rally deployment create --fromenv --name my-cloud

rally deployment use my-cloud

rally deployment check


rally verify create-verifier --type "tempest" --name "my-cloud-verifier"

# Run tasks
rally task start samples/tasks/scenarios/nova/boot-from-volume-and-delete.json

# Run Verify
rally verify start --pattern set=image

