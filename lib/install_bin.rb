require File.expand_path(File.join('..', '_helpers', 'symlink'), __FILE__)

module InstallBin

  def self.run(config)
    Helpers::Symlink.run(
      config['bin_folder_source_path'],
      config['bin_folder_target_path']
    )
  end

end
