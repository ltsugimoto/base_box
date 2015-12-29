# -*- coding:utf-8 -*-
class Room

  attr_accessor :name

  @@room_count = 0
  @@room_list = []

  def initialize(name, capacity)
    @name = name
    @capacity = capacity

    self.class.add_room(self)
  end

  def capacity=(cap)
    @capacity = cap
  end

  def capacity
    @capacity
  end

  def self.add_room(room)
    @@room_list << room
    @@room_count = @@room_list.size
  end

  def self.list_rooms
    puts '部屋がありません' if @@room_list.empty?
    @@room_list.each do |room|
      puts "#{room.name}(人員:#{room.capacity}名)"
    end
  end

  def self.show_room_count
    puts "合計: #{@@room_count}部屋"
  end
end

# # # # #
# MAIN  #
# # # # #
Room.list_rooms
Room.show_room_count
puts '==================================='

kamakura = Room.new('やり切る鎌倉', 6)
shinkawasaki = Room.new('チャレンジの新川崎', 4)

Room.list_rooms
Room.show_room_count
puts '==================================='
