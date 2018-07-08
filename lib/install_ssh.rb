require File.expand_path(File.join('..', '_helpers', 'symlink'), __FILE__)

module InstallSSH

  def self.run(config)
    Helpers::Symlink.run(
      config['ssh_folder_source_path'],
      config['ssh_folder_target_path']
    )
  end

end
