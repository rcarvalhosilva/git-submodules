require "submodule"
require "fileutils"
describe Submodule::Manager do
  it "Dependencies directory created" do
    expect(Submodule::Manager.init()).to eql("Dependencies folder created!")
    expect(Pathname.new('Dependencies')).to exist
    FileUtils.rm_rf('Dependencies')
  end
end
