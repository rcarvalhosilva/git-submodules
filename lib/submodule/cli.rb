require "thor"
require "submodule"

module Submodule
  class CLI < Thor
    desc "git-sbm init", "Creates the dependencies folder which will store the submodules."
    def init()
      puts Submodule::Manager.init()
    end

    desc "git-sbm add <dependecy name> <git url>", "Add a new submodule dependency"
    def add(submodule_name, url)
      puts Submodule::Manager.add_dependency(submodule_name, url)
    end
  end
end
