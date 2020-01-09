# create an alias for kubectl for easy command using
ln -s /usr/bin/kubectl /usr/bin/k

# auto command completion for kubectl
echo 'source <(kubectl completion bash)' >> /home/vagrant/.bashrc
echo 'alias k=kubectl' >> /home/vagrant/.bashrc
echo 'complete -F __start_kubectl k' >> /home/vagrant/.bashrc