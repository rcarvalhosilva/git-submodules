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
  end
end
