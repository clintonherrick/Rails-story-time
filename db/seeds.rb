# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


image_list = [
  ['1.png', 'animated bounce', "50"],
  ['2.png', 'animated bounce', "50"],
  ['3.png', 'animated bounce', "50"],
  ['4.png', 'animated wobble', "50"], # boobs
  ['5.png', 'animated bounce', "50"],
  ['6.png', 'animated bounce', "50"],
  ['7.png', 'animated bounce', "50"],
  ['8.png', 'animated bounce', "50"],
  ['9.png', 'animated bounce', "50"],
  ['10.png', 'animated bounce', "50"],
  ['11.png', 'animated bounce', "50"],
  ['12.png', 'animated bounce', "50"],
  ['13.png', 'animated bounce', "50"],
  ['14.png', 'animated bounce', "50"],
  ['15.png', 'animated bounce', "50"],
  ['16.png', 'animated bounce', "50"],
  ['17.png', 'animated bounce', "50"],
  ['18.png', 'animated bounce', "50"],
  ['19.png', 'animated bounce', "50"],
  ['20.png', 'animated bounce', "50"],

  ['21.png', 'animated bounce', "50"],
  ['22.png', 'animated bounce', "50"],
  ['23.png', 'animated bounce', "50"],
  ['24.png', 'animated bounce', "50"],
  ['25.png', 'animated bounce', "50"],
  ['26.png', 'animated bounce', "50"],
  ['27.png', 'animated bounce', "50"],
  ['28.png', 'animated bounce', "50"],
  ['29.png', 'animated bounce', "50"],
  ['30.png', 'animated bounce', "50"],
  ['31.png', 'animated bounce', "50"],
  ['32.png', 'animated bounce', "50"],
  ['33.png', 'animated bounce', "50"],
  ['34.png', 'animated bounce', "50"],
  ['35.png', 'animated bounce', "50"],
  ['36.png', 'animated bounce', "50"],
  ['37.png', 'animated bounce', "50"],
  ['38.png', 'animated bounce', "50"],
  ['39.png', 'animated bounce', "50"],
  ['40.png', 'animated bounce', "50"],

  ['41.png', 'animated bounce', "50"],
  ['42.png', 'animated bounce', "50"],
  ['43.png', 'animated bounce', "50"],
  ['44.png', 'animated bounce', "50"],
  ['45.png', 'animated bounce', "50"],
  ['46.png', 'animated bounce', "50"],
  ['47.png', 'animated bounce', "50"],
  ['48.png', 'animated bounce', "50"],
  ['49.png', 'animated bounce', "50"],
  ['50.png', 'animated bounce', "50"],
  ['51.png', 'animated bounce', "50"],
  ['52.png', 'animated bounce', "50"],
  ['53.png', 'animated bounce', "50"],
  ['54.png', 'animated bounce', "50"],
  ['55.png', 'animated bounce', "50"],
  ['56.png', 'animated bounce', "50"],
  ['57.png', 'animated bounce', "50"],
  ['58.png', 'animated bounce', "50"],
  ['59.png', 'animated bounce', "50"],
  ['60.png', 'animated bounce', "50"],

  ['61.png', 'animated bounce', "50"],
  ['62.png', 'animated bounce', "50"],
  ['63.png', 'animated bounce', "50"],
  ['64.png', 'animated swing infinite', "50"], # creepy clown 1
  ['65.png', 'animated swing infinite', "50"], # creepy clown 2
  ['66.png', 'animated bounce', "50"],
  ['67.png', 'animated bounce', "50"],
  ['68.png', 'animated bounce', "50"],
  ['69.png', 'animated bounce', "50"],
  ['70.png', 'animated bounce', "50"],
  ['71.png', 'animated bounce', "50"],
  ['72.png', 'animated bounce', "50"],
  ['73.png', 'animated bounce', "50"],
  ['74.png', 'animated bounce', "50"],
  ['75.png', 'animated bounce', "50"],
  ['76.png', 'animated bounce', "50"],
  ['77.png', 'animated bounce', "50"],
  ['78.png', 'animated bounce', "50"],
  ['79.png', 'animated bounce', "50"],
  ['80.png', 'animated bounce', "50"],
]

image_list.each() do |src, animation, size|
  Image.create({:src => src, :animation => animation, :size => size})
end
