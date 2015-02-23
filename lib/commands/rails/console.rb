module Commands
  module Rails
    class Console < Commands::Base
      def remote_command
        [
          "cd /path/to/app/directory",
          "bundle exec rails console production"
        ].join(" && ")
      end
    end
  end
end
