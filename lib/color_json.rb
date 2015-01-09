require "color_json/version"
require 'color_json/cli/application'
require 'json'

class String
    def initial
        self[0,1]
    end
end

module ColorJson
    module_function
    def ColorJson.build(file)
        color_json = {:layout => "./index.hbs", :data=> {:color=>{}}}
        file = File.open(file, "r")

        save_tag = nil
        file.each_line do |line|
            line = line.gsub("\n", "")
            if line[0,4] == "//**"
                save_tag = line.gsub("//**", "").strip
            elsif line.initial == "$"
                split = line.split(":")
                if save_tag
                    color_json[:data][:color].store(save_tag, {}) unless color_json[:data][:color].has_key? save_tag
                    color_json[:data][:color][save_tag].store(split[0], split[1])
                else
                    color_json[:data][:color].store(split[0], split[1])
                end
            end
        end

        File.open('color.json', "w") do |f|
            f << JSON.pretty_generate(color_json)
        end
    end
end


