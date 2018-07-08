require 'fileutils'
require 'shellwords'

module Helpers

  module Symlink

    def self.run(source_path, target_path)
      source_path = File.expand_path(source_path)
      target_path = File.expand_path(target_path)

      file_exists    = File.exists?(target_path)
      symlink_exists = File.symlink?(target_path)

      if !symlink_exists || File.readlink(target_path) != source_path
        FileUtils.rm(target_path) if file_exists
        `ln -s #{source_path.shellescape} #{target_path.shellescape}`
      end
    end

  end

end
