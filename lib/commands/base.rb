module Commands
  class Base
    attr_accessor :app, :environment

    def initialize(args)
      @app, @environment = args
    end

    def execute
      run "#{ssh_command} -t '#{remote_command}'"
    end

    private

    def run(command)
      puts "Logging into #{app} on #{environment} environment..."
      puts command
      exec command
    end

    def ssh_command
      case environment
      when "production"
        "ssh user@#{app}.domain"
      when "demo"
        "ssh user@#{app}.demo.domain"
      end
    end

    def remote_command
      raise NotImplementedError
    end
  end
end
