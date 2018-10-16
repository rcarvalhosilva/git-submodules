module Submodule
  class Manager
    def self.init()
      current_dir = Dir.pwd
      Dir.mkdir("Dependencies") unless Dir.exists?("Dependencies")
      "Dependencies folder created!"
    end
  end
end
