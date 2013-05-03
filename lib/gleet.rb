require "gleet/version"

module Gleet
    class Main
        def self.go args
            show_old = args.include?('-o') || args.include?('--old')

            shas = `git log --oneline --no-color | awk '{print \$1'}`.split ' '

            shas.map! do |sha|

                old = sha
                sha = sha.chomp
                sha = sha.gsub('0', 'o')
                sha = sha.gsub('1', 'l')
                sha = sha.gsub('2', 'z')
                sha = sha.gsub('3', 'e')
                sha = sha.gsub('4', 'h')
                sha = sha.gsub('5', 's')
                sha = sha.gsub('6', 'g')
                sha = sha.gsub('7', 't')
                sha = sha.gsub('8', 'b')
                sha = sha.gsub('9', 'g')

                if show_old
                    "(#{old})  ->  #{sha}"
                else
                    "#{sha}"
                end

            end

            puts shas
        end
    end
end
