require_relative "./list.rb"

class TodoBoard
        
    attr_accessor :list
    
    def initialize
        @list = { }
    end

    def get_command
        puts
        puts "Enter Command: "
        cmd, *args = gets.chomp.split(" ")
        ints = args[1..-1].map(&:to_i) if args.length > 1
        label = args[0]
        case cmd
        when 'mklist'
            unless list.has_key?(label)
            list[label] = List.new(args[0])
            puts "Gotta get yo shiz together, '#{label}' successfully made."
            else
                puts "Yo you already made '#{label}'."
            end
        when 'ls'
            puts "List of stuff ya gotta do: "
            list.each_key.with_index { |label, i| puts "#{i+1}. #{label}" }
        when 'showall'
            list.each_value { |l| l.prints }
        when 'mktodo'
            list[label].add_item(args[1], args[2], args[3..-1].join(" "))
        when 'up'
            list[label].up(*ints)
        when 'down'
            list[label].down(*ints)
        when 'swap'
            list[label].swap(*ints)
        when 'sort'
            list[label].sort_by_date!
        when 'priority'
            list[label].print_priority
        when 'print'
            if args[1..-1].empty?
                list[label].prints
            else
                list[label].print_full_item(*ints)
            end
        when 'toggle'
            list[label].toggle_item(*ints)
        when 'remove'
            list[label].remove(*ints)
        when 'purge'
            list[label].purge
        when 'quit'
            puts "Peace homes."
            return false
        else
            puts "Yo that ain't legit. Try again."
        end
        true
    end

    def run 
        until self.get_command == false
        
        end
    end
    
end