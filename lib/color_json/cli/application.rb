require 'thor'
require "color_json"

module Cli
    class Application < Thor
        default_task :help
        desc 'build FILE', 'Input your file and generate the color json file.'
        def build(file)
            ColorJson.build(file)
        end
    end
end
