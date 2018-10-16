require "fileutils"

module Submodule
  class Manager
    def self.init()
      current_dir = Dir.pwd
      Dir.mkdir("Dependencies") unless Dir.exists?("Dependencies")
      "Dependencies folder created!"
    end

    def self.add_dependency(submodule_name, url)
      puts `git submodule add #{url} Dependencies/#{submodule_name}`
    end

    def self.update_dependency(submodule_name, tag)
      Dir.chdir("Dependencies/#{submodule_name}") do
        puts `git fetch`
        puts `git checkout -q #{tag}`
      end
      puts `git commit -am "Updated submodule #{submodule_name} to #{tag}"`
      puts "Updated submodule #{submodule_name} to #{tag}"
    end

    def self.boot()
      puts `git submodule sync --recursive`
      puts `git submodule update --init --recursive`
      puts "Submodules ready"
    end

    def self.remove(submodule_name)
      puts `git submodule deinit -f Dependencies/#{submodule_name}`
      puts `rm -rf .git/modules/Dependencies/#{submodule_name}`
      puts `git rm -f Dependencies/#{submodule_name}`
    end
  end
end
