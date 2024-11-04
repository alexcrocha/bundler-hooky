require "bundler/hooky/version"

module Bundler
  module Hooky
    class << self
      def register

        Bundler::Plugin.add_hook("after-install-all") do |installed_gems|

          raise 'xyz'
          $stdout.puts("Running tapioca gem")
          system("bundle exec tapioca gem", execption: true)
        end
      end
    end
  end
end
