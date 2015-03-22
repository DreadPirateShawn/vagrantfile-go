# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty32"

  config.ssh.forward_agent = true

  config.vm.synced_folder "/coding/go", "/coding_sync/go",
    owner: "vagrant",
    group: "vagrant",
    mount_options: ["dmode=775,fmode=775"] # Fully executable, since Go puts everything runnable into $GOPATH/bin

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.provision :shell, :path => "prep.sh"

  config.vm.provision :shell, :path => "install-apt.sh"
  config.vm.provision :shell, :path => "install-go.sh",        :args => "1.4.2 linux 386"
  config.vm.provision :shell, :path => "install-rrdcached.sh", :args => "1.5.0-rc2"

  # Misc configs
  config.vm.provision :file, :source => "~/.gitconfig", :destination => "/home/vagrant/.gitconfig"
  config.vm.provision :shell, :path => "configure-vim.sh"

end
