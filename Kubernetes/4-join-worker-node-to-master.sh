# Do this on the Master Node
# To generate the join command, run this kubeadm command on the master node

kubeadm token create --print-join-command

# Take the output of the command above and run it on each worker node you want to join. For example:

kubeadm join 10.14.10.39:6443 --token 55ekme.0ahjmz09920bqsyt --discovery-token --ca-cert-hash 
sha256:636786a58df07625167bd7305d56c4cc75bcbedcc474313934aa08c09dc603af

# 10.14.10.39:6443 is the control plane endpoint