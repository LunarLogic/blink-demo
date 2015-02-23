module Commands
  class Logs < Commands::Base
    def remote_command
      [
        "cd /path/to/app/directory/log",
        "tail -f *.log"
      ].join(" && ")
    end
  end
end
