require File.expand_path(File.join('..', '_helpers', 'symlink'), __FILE__)

module InstallBash

  def self.run(config)
    Helpers::Symlink.run(
      config['bash_bash_profile_source_path'],
      config['bash_bash_profile_target_path']
    )

    Helpers::Symlink.run(
      config['bash_bashrc_source_path'],
      config['bash_bashrc_target_path']
    )
  end

end
