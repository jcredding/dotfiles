require File.expand_path(File.join('..', '_helpers', 'symlink'), __FILE__)

module InstallPow

  def self.run(config)
    Helpers::Symlink.run(
      config['pow_powconfig_source_path'],
      config['pow_powconfig_target_path']
    )
  end

end
