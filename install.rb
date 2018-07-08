require 'rubygems'
require 'json'
require 'logger'

ROOT_PATH = File.expand_path("..", __FILE__).freeze

LOGGER = Logger.new(File.join(ROOT_PATH, 'log', 'install.log'))
CONFIG = JSON.parse(File.read(ARGV[0]))

# Install apps
require File.join(ROOT_PATH, 'lib', 'install_apps')
InstallApps.run(CONFIG)

# Install homebrew
require File.join(ROOT_PATH, 'lib', 'install_homebrew')
InstallHomebrew.run(CONFIG)

# Symlink SSH folder
require File.join(ROOT_PATH, 'lib', 'install_ssh')
InstallSSH.run(CONFIG)

# Install bashrc & bash_profile
require File.join(ROOT_PATH, 'lib', 'install_bash')
InstallBash.run(CONFIG)

# Install git config
require File.join(ROOT_PATH, 'lib', 'install_git')
InstallGit.run(CONFIG)

# Symlink bin folder
require File.join(ROOT_PATH, 'lib', 'install_bin')
InstallBin.run(CONFIG)

# Install ruby config
require File.join(ROOT_PATH, 'lib', 'install_ruby')
InstallRuby.run(CONFIG)

# Install sublime config
require File.join(ROOT_PATH, 'lib', 'install_sublime')
InstallSublime.run(CONFIG)

# Install preferences
require File.join(ROOT_PATH, 'lib', 'install_preferences')
InstallPreferences.run(CONFIG)

# Install files
require File.join(ROOT_PATH, 'lib', 'install_files')
InstallFiles.run(CONFIG)

# DEPRECATED

# Install pow config

# require File.join(ROOT_PATH, 'lib', 'install_pow')
# InstallPow.run(CONFIG)
