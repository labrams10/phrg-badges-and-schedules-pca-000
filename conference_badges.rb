require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.collect {|name| badge_maker(name)}
end

def assign_rooms(name_array)
  room_assignment = []
  name_array.each_with_index do |name, room_number|
    room_assignment << "Hello, #{name}! You'll be assigned to room #{room_number + 1}!"
  end
  room_assignment
end

def printer(final_badges)
  batch_badge_creator(final_badges).each do |badge|
    puts badge
  end
  assign_rooms(final_badges).each do |room|
    puts room
  end
end
