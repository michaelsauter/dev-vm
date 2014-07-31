# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Ubuntu-based box
  # https://vagrantcloud.com/box-cutter/ubuntu1404-docker
  # https://github.com/box-cutter/ubuntu1404-docker
  config.vm.box = "box-cutter/ubuntu1404-docker"

  # Create a private network, which allows host-only access
  # to the machine using a specific IP.
  config.vm.network :private_network, ip: "192.168.33.99"

  # Enable agent forwarding for SSH connections (default: false)
  config.ssh.forward_agent = true

  # Sync ./work of host to /vagrant inside VM
  config.vm.synced_folder "work", "/vagrant", nfs: true

  # VirtualBox-specific configuration
  config.vm.provider :virtualbox do |vb|
    # Headless mode
    vb.gui = false

    # Give VM 2GB system memory & access to all cpu cores on the host
    # http://www.stefanwrobel.com/how-to-make-vagrant-performance-not-suck
    host = RbConfig::CONFIG['host_os']
    if host =~ /darwin/
      cpus = `sysctl -n hw.ncpu`.to_i
    elsif host =~ /linux/
      cpus = `nproc`.to_i
    else
      cpus = 2
    end
    vb.customize ["modifyvm", :id, "--memory", 2048]
    vb.customize ["modifyvm", :id, "--cpus", cpus]

    # DNS settings
    # http://serverfault.com/questions/453185/vagrant-virtualbox-dns-10-0-2-3-not-working?rq=1
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  # Basic provisioning
  # Use privileged: false to prevent "stdin: is not a tty" errors,
  # see https://github.com/mitchellh/vagrant/issues/1673#issuecomment-36047038.
  config.vm.provision :file, source: "setup/deps", destination: "/home/vagrant/deps"
  config.vm.provision :shell, path: "setup/skittle.sh", privileged: false
end
