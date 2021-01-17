def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    a = array
    a.collect do |x|
        badge_maker(x)
    end
end

def assign_rooms(array)
    newArray = []
    newArray.clear
    getMessage = array.each.with_index(1) do |name, room|
        msg = "Hello, #{name}! You'll be assigned to room #{room}!"
        newArray << msg
    end
    return newArray
end

def printer(argument)
    batch_badge_creator(argument).each{|x| puts x}
    assign_rooms(argument).each{|x| puts x}
end