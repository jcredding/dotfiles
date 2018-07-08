require File.expand_path(File.join('..', '_helpers', 'symlink'), __FILE__)

module InstallRuby

  def self.run(config)
    Helpers::Symlink.run(
      config['ruby_gemrc_source_path'],
      config['ruby_gemrc_target_path']
    )

    Helpers::Symlink.run(
      config['ruby_assert_folder_source_path'],
      config['ruby_assert_folder_target_path']
    )
  end

end
