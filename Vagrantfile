Vagrant.configure("2") do |config|

  config.vm.box = "precise64"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "puppet/manifests"
    puppet.module_path    = "puppet/modules"
    puppet.facter         = {
      :token => "0d89a08eccbd8d1eac91"
      :url => "gitlab-ci.mishak.net"
    }
  end
end