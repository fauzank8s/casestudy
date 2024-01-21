## Ansible
1. Create an inventory file in Ansible, group your inventory to follow these criteria:
node1 should be the member of "loadbalancer" group.
node2 and node3 should be the member of "backend" group

**Answer** : https://github.com/fauzank8s/casestudy/blob/main/Ansible/1-inventory

2. create a playbook to install nginx on all of the servers.

**Answer** : https://github.com/fauzank8s/casestudy/blob/main/Ansible/2-install-nginx-all-server.yml

3. create another playbook to change the default nginx index page with a html file 
contains "served from: <hostname>". perform this task on the backend group
expected result: when we hit http://node2, we should get "served from: node2"

**Answer** : https://github.com/fauzank8s/casestudy/blob/main/Ansible/3-change-default-nginx-page-playbook.yml

4. Lastly, create playbook to setup nginx in the loadbalancer group as follows:
- Make it load balance between nodes in the backend group
- Use "least connection" load balancing method

**Answer** : https://github.com/fauzank8s/casestudy/blob/main/Ansible/4-load-balancer-playbook.yml

## Kubernetes

1. Create a deployment as follows:
- Name: nginx-app
- Using container nginx with version 1.11.10-alpine
- The deployment should contain 3 replicas
Next, deploy the application with new version 1.11.13-alpine, by performing a rolling update.
Finally, rollback that update to the previous version 1.11.10-alpine.

**Answer** :
- https://github.com/fauzank8s/casestudy/blob/main/Kubernetes/1-nginx-app.yaml
- https://github.com/fauzank8s/casestudy/blob/main/Kubernetes/1-nginx-app-update.yaml

2. Set a node named k8s-node-1 as unavailable and reschedule all the pods running on it.

**Answer** : https://github.com/fauzank8s/casestudy/blob/main/Kubernetes/2-set-node-unavailable.sh

3. Create a Persistent Volume with name app-data, of capacity 2Gi and access mode 
ReadWriteMany. The type of volume is hostPath and its location is /srv/app-data.
Create a Persistent Volume Claim that requests the Persistent Volume you had created 
above. The claim should request 2Gi. Ensure that the Persistent Volume Claim has the 
same storageClassName as the Persistent Volume you had previously created

**Answer** :
- https://github.com/fauzank8s/casestudy/blob/main/Kubernetes/3-persistent-volume.yaml
- https://github.com/fauzank8s/casestudy/blob/main/Kubernetes/3-persistent-volume-claim.yaml

4. You have been asked to set up a Kubernetes cluster, one master and one worker node. 
You have done the initialization of the master, what is the next steps to make the worker 
node join the cluster?

**Answer** : https://github.com/fauzank8s/casestudy/blob/main/Kubernetes/4-join-worker-node-to-master


