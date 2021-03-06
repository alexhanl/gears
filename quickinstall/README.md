# Quick Kubernetes Installation on your laptop using vagrant

## Steps

1. Install `vagrant` and `oracle virtual box`

2. Download the `centos/7` box from the link: https://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7-x86_64-Vagrant-1905_01.VirtualBox.box, and then import it using command: 
        
        vagrant box add --name demo/centos7 ~/Download/CentOS-7-x86_64-Vagrant-1905_01.VirtualBox.box

3. Execute the command `vagrant up`, then wait for about 10 minutes.  Do NOT use any corprate VPN proxy, which might slow down the progress.  There could be some errors/warning messages, and usually they are not true errors.  The kmaster and two kworkers will be provisioned sequentially, and after that, issue the command `vagrant status` to see the status of the three nodes, which should all be running. 

4. Execute the command `vagrant ssh kmaster` to enter the shell.  Then you can use `kubectl` command. 

5. Try to deploy a sample application by executing the command to test if the k8s cluster is working as expected. 

        kubectl apply -f /vagrant/hello-kubernetes.yaml

6. Optionally, if you want to use calico instead of the default flannel, just edit the Vagrantfile by uncommenting the calico line and commenting the flannel line. 

7. The latest version of kubernetes is deployed.
    
