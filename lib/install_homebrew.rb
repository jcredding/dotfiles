require 'shellwords'
require File.expand_path(File.join('..', '_helpers', 'ask'), __FILE__)

module InstallHomebrew
  extend Helpers::Ask

  HOMEBREW_INSTALL_URL = "https://raw.githubusercontent.com/Homebrew/install/master/install"
  POSTGRESQL_FORMULA   = "postgresql@9.6"
  SQLITE_FORMULA       = "sqlite"
  REDIS_FORMULA        = "redis"
  GIT_FORMULA          = "git"
  GIT_EXTRAS_FORMULA   = "git-extras"
  NGINX_FORMULA        = "nginx"
  HAPROXY_FORMULA      = "haproxy"
  OPENSSL_FORMULA      = "openssl"
  RUBY_BUILD_FORMULA   = "ruby-build"

  def self.run(config)
    if `which brew`.to_s.strip.empty?
      `ruby -e "$(curl -fsSL #{HOMEBREW_INSTALL_URL.shellescape})"`
    end

    ask("Install #{POSTGRESQL_FORMULA}?") do
      `brew install #{POSTGRESQL_FORMULA}`
    end

    ask("Install #{SQLITE_FORMULA}?") do
      `brew install #{SQLITE_FORMULA}`
    end

    ask("Install #{REDIS_FORMULA}") do
      `brew install #{REDIS_FORMULA}`
    end

    ask("Install #{GIT_FORMULA}") do
      `brew install #{GIT_FORMULA}`
      `brew install #{GIT_EXTRAS_FORMULA}`
    end

    ask("Install #{NGINX_FORMULA}") do
      `brew install #{NGINX_FORMULA}`
    end

    ask("Install #{HAPROXY_FORMULA}") do
      `brew install #{HAPROXY_FORMULA}`
    end

    ask("Install #{OPENSSL_FORMULA}") do
      `brew install #{OPENSSL_FORMULA}`
    end

    ask("Install #{RUBY_BUILD_FORMULA}") do
      `brew install #{RUBY_BUILD_FORMULA}`
    end
  end

end
