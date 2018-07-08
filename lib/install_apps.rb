require File.expand_path(File.join('..', '_helpers', 'ask'), __FILE__)

module InstallApps
  extend Helpers::Ask

  APPS = [
    "1Password [License]",
    "Alfred",
    "Chrome",
    "Discord",
    "Firefox",
    "HP Easy Scan",
    "iStat Menus 5 [License]",
    "Java",
    "LICEcap",
    "Monosnap",
    "pgAdmin4",
    "Razer Synapse",
    "Skype",
    "Steam",
    "Sublime Text 3 [License]",
    "TweetDeck",
    "The Unarchiver",
    "VLC"
  ]

  def self.run(config)
    APPS.each do |app|
      ask("Have you installed and configured #{app}?")
    end
  end

end
