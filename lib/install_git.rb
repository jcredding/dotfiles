require 'erb'
require File.expand_path(File.join('..', '_helpers', 'symlink'), __FILE__)

module InstallGit

  def self.run(config)
    source_path = File.expand_path(config['git_gitconfig_source_path'])
    if !File.exists?(source_path)
      data = GitConfigData.new(
        config['git_name'],
        config['git_email'],
        config['git_github_user'],
        config['git_github_token']
      )
      template_path = File.expand_path(config['git_gitconfig_template_path'])
      erb           = ERB.new(File.read(template_path))
      contents      = erb.result(data.send(:binding))
      File.open(source_path, 'w') do |f|
        f.write(contents)
      end
    end

    Helpers::Symlink.run(
      source_path,
      config['git_gitconfig_target_path']
    )

    Helpers::Symlink.run(
      config['git_gitignore_source_path'],
      config['git_gitignore_target_path']
    )
  end

  GitConfigData = Struct.new(
    :name,
    :email,
    :github_user,
    :github_token
  )

end
