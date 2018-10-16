# Git-Submodules

Welcome to Git-Submodules!
Git-Submodules is a simple tool with the goal of making your workflow with submodules a little bit easier.

## Installation

The recommended way of installing is through Bundler. Add the following to your Gemfile:

```ruby
gem 'git-sbm'
```

And then execute:

    $ bundle install

## Usage

# Initializing
When first integrating Git-Submodules to your project run the following command:

`$ bundle exec git-sbm init`

This way the dependencies folder will be created. That's the folder where your submodules will be checked out. All the following commands should run from the "Dependencies" parent folder from now on.

# Adding a dependency
To add a dependency just run

`$ bundle exec git-sbm add <dependecy name> <submodule url>`

# Update a dependency to a specific version
To set a dependency to a specific version run

`$ bundle exec git-sbm update <dependecy name> <version tag>`

This will create a commit with the update

# Sync dependencies
To sync your dependencies just run

`$ bundle exec git-sbm boot`

You should run this command after you cloned a git repo that has submodules (e.g on your C.I.), when someone in your team update a dependency or change the remote url

# Remove dependency
To remove a dependency just run

`$ bundle exec git-sbm remove <dependecy name>`

## Contributing

Bug reports and pull requests are welcome on GitHub at [rcarvalhosilva/git-submodules](https://github.com/rcarvalhosilva/git-submodules)
