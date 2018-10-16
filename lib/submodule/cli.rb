require "thor"
require "submodule"

module Submodule
  class CLI < Thor
    desc "git-sbm init", "Creates the dependencies folder which will store the submodules."
    def init()
      puts Submodule::Manager.init()
    end
  end
end
