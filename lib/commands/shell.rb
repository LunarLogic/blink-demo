module Commands
  class Shell < Commands::Base
    def remote_command
      [
        "cd /path/to/app/directory",
        "bash"
      ].join(" && ")
    end
  end
end
