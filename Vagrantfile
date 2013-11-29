boxes = [
  { :name => :dev,   :roles => ['base', 'dev']   },
  { :name => :util,  :roles => ['base', 'util']  },
  { :name => :media, :roles => ['base', 'media'] },
]
 
Vagrant.configure("2") do |config|
  config.vm.box = "centos_64"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_centos-6.4_provisionerless.box"
  config.omnibus.chef_version = :latest
 
  boxes.each do |opts|
    # per node configuration
    config.vm.define opts[:name] do |node|
      node.vm.hostname = "%s.vagrant" % opts[:name].to_s
      # chef-solo configuration
      node.vm.provision :chef_solo do |chef|
        chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
        chef.data_bags_path = "data_bags"
        chef.roles_path = "roles"
        opts[:roles].each do |role|
          chef.add_role("#{role}")
        end
        # stop chef-solo from breaking the box
        chef.json = {
          "bluebox" => {
            "network" => false,
          },
          "authorization" => {
            "sudo" => {
              "users" => [ "vagrant" ],
              "passwordless" => true,
              "sudoers_defaults" => ['!requiretty'],
            },
          },
        }
      end
    end
  end
end
