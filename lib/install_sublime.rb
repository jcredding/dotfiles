require File.expand_path(File.join('..', '_helpers', 'symlink'), __FILE__)

module InstallSublime

  def self.run(config)
    Helpers::Symlink.run(
      config['sublime_preferences_source_path'],
      config['sublime_preferences_target_path']
    )

    Helpers::Symlink.run(
      config['sublime_theme_source_path'],
      config['sublime_theme_target_path']
    )
  end

end
