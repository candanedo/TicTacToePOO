class Player
        attr_accessor :names
        def initialize 
                @names = Hash.new()
        end
        def set_name (id, name)
                @names[id] = name
        end
        def get_name id
                return @names[id]
        end
end
