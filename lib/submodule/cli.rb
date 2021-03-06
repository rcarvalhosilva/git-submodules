require "thor"
require "submodule"

module Submodule
  class CLI < Thor
    desc "init", "Creates the dependencies folder which will store the submodules."
    def init()
      puts Submodule::Manager.init()
    end

    desc "add <dependecy name> <git url>", "Add a new submodule dependency"
    def add(submodule_name, url)
      puts Submodule::Manager.add_dependency(submodule_name, url)
    end

    desc "update <dependecy name> <version tag>", "update a dependency to the specified tag"
    def update(submodule_name, tag)
      puts Submodule::Manager.update_dependency(submodule_name, tag)
    end

    desc "boot", "update and clone all registered submodules"
    def boot()
      puts Submodule::Manager.boot()
    end

    desc "remove <dependecy name>", "removes a submodule dependency"
    def remove(submodule_name)
      puts Submodule::Manager.remove(submodule_name)
    end
  end
end
