# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
    config.vm.define :magento do |mag_config|
        mag_config.vm.box = "precise32"
        # mag_config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
        mag_config.vm.customize ["modifyvm", :id, "--rtcuseutc", "on"]
        mag_config.ssh.max_tries = 10
        # mag_config.vm.forward_port 80, 8080
        # mag_config.vm.forward_port 3306, 8889
        mag_config.vm.network :hostonly, "192.168.10.200"
        mag_config.vm.host_name = "magento.dev"

        mag_config.vm.provision :puppet do |puppet|
            puppet.manifests_path = "puppet/manifests"
            puppet.manifest_file  = "magento.pp"
            puppet.module_path = "puppet/modules"
            #puppet.options = "--verbose --debug"
            puppet.options = "--verbose"
        end

        mag_config.vm.provision :shell, :path => "puppet/scripts/enable_remote_mysql_access.sh"
    end
end
