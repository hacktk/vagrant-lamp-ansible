Vagrant.configure(2) do |config|
    config.vm.box = "cent7"
    config.vm.network "private_network", ip:"192.168.33.10"
    config.vm.network "forwarded_port", host:33100, guest:8080
    config.vm.network "forwarded_port", host:33101, guest:8081
    config.vm.network "forwarded_port", host:33102, guest:8082
    config.vm.hostname = "develop.hacktk"
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.ssh.forward_agent = true
    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "ansible/site.yml"
        ansible.extra_vars = {
            host_name: config.vm.hostname,
            review_public_port: 8080,
            review_public_ssl_port: 8081,
            review_admin_port: 8082,
            env_name: "APP_ENV",
            git_user_name: "hacktk",
            git_user_email: "hacktk3@gmail.com"
        }
    end
end
