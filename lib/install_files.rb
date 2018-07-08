require File.expand_path(File.join('..', '_helpers', 'ask'), __FILE__)

module InstallFiles
  extend Helpers::Ask

  def self.run(config)
    ask("Install Desktop files?") do
      cp_files("/Volumes/DATAZ/Backup/Desktop", "~/Desktop")
    end

    ask("Install Documents files?") do
      cp_files("/Volumes/DATAZ/Backup/Documents", "~/Documents")
    end

    ask("Install Downloads files?") do
      cp_files("/Volumes/DATAZ/Backup/Downloads", "~/Downloads")
    end

    ask("Install iTunes files?") do
      cp_files("/Volumes/DATAZ/Backup/iTunes", "~/Music/iTunes")
    end

    ask("Install Pictures files?") do
      cp_files("/Volumes/DATAZ/Backup/Pictures", "~/Pictures")
    end

    ask("Install Projects/jcr files?") do
      cp_files("/Volumes/DATAZ/Backup/Projects/jcr", "~/Projects/jcr")
    end

    ask("Install Projects/redding files?") do
      cp_files("/Volumes/DATAZ/Backup/Projects/redding", "~/Projects/redding")
    end

    ask("Install Projects/rw files?") do
      cp_files("/Volumes/DATAZ/Backup/Projects/rw", "~/Projects/rw")
    end
  end

  def self.cp_files(source_path, target_path)
    src = File.join(source_path, "*")
    tgt = File.expand_path(target_path)

    FileUtils.mkdir_p(tgt)
    FileUtils.cp_r(Dir.glob(src), tgt)
  end

end
