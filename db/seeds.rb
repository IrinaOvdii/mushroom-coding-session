# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@mushrooms = []
File.open("agaricus-lepiota.data").each do |m|
  @mushroom = m.chomp.split(",")
  @mushrooms << @mushroom
end

for @mushroom in @mushrooms
 MushroomOne.create!({
  classes: @mushroom[0],
  cap_shape: @mushroom[1],
  cap_surface: @mushroom[2],
  cap_color: @mushroom[3],
  bruises: @mushroom[4],
  odor: @mushroom[5],
  gill_attachment: @mushroom[6],
  gill_spacing: @mushroom[7],
  gill_size: @mushroom[8],
  gill_color: @mushroom[9],
  stalk_shape: @mushroom[10],
  stalk_root: @mushroom[11],
  stalk_surface_above_ring: @mushroom[12],
  stalk_surface_below_ring: @mushroom[13],
  stalk_color_above_ring: @mushroom[14],
  stalk_color_below_ring: @mushroom[15],
  veil_type: @mushroom[16],
  veil_color: @mushroom[17],
  ring_number: @mushroom[18],
  ring_type: @mushroom[19],
  spore_print_color: @mushroom[20],
  population: @mushroom[21],
  habitat: @mushroom[22],
})
end
