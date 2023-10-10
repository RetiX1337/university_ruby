# frozen_string_literal: true
require_relative 'parrot_factory'

def print_parrots(parrots)
  parrots.each do |parrot|
    puts "#{parrot.name}, #{parrot.age}"
    puts "Using Flyweight Object #{parrot.parrot_flyweight.id} #{parrot.parrot_flyweight.breed}, #{parrot.parrot_flyweight.pattern}, #{parrot.parrot_flyweight.gender}"
  end
end

parrots = [ParrotFactory.create_parrot("Beze", 1, "Cockatiel", "Lutino", "Female"),
           ParrotFactory.create_parrot("Cookie", 3, "Cockatiel", "Lutino", "Female"),
           ParrotFactory.create_parrot("Silver", 2, "Cockatiel", "Gray", "Male"),
           ParrotFactory.create_parrot("Sonic", 1, "Budgie", "Blue", "Male"),
           ParrotFactory.create_parrot("Pixie", 4, "Budgie", "Blue", "Male"),
           ParrotFactory.create_parrot("Zephyr", 1, "Budgie", "White", "Male")]

print_parrots parrots

puts parrots[0].parrot_flyweight == parrots[1].parrot_flyweight
puts parrots[2].parrot_flyweight == parrots[0].parrot_flyweight
puts parrots[3].parrot_flyweight == parrots[4].parrot_flyweight
puts parrots[5].parrot_flyweight == parrots[3].parrot_flyweight

