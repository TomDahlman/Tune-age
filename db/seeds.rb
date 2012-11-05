# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Clearing the all entries in the Artist, Album & Song tables, if any."
Artist.destroy_all
Album.destroy_all
Song.destroy_all

a = Artist.create(:name => "Elvis Costello")
b = Artist.create(:name => "The Call")
c = Artist.create(:name => "Greenday")
d = Artist.create(:name => "Take 6")

m = Album.create(:name => "My Aim Is True")
n = Album.create(:name => "Reconciled")
o = Album.create(:name => "Dookie")
p = Album.create(:name => "Take 6")
q = Album.create(:name => "King of America")

Song.create(:title => "Alison", :director_id => a.id, :album_id => m.id)
Song.create(:title => "Blame it on Cain", :director_id => a.id, :album_id => m.id)
Song.create(:title => "I still believe", :director_id => b.id, :album_id => n.id)
Song.create(:title => "Everywhere I go", :director_id => b.id, :album_id => n.id)
Song.create(:title => "Basketcase", :director_id => c.id, :album_id => o.id)
Song.create(:title => "Gold Mine", :director_id => d.id, :album_id => m.id)
Song.create(:title => "Poison Rose", :director_id => a.id, :album_id => q.id)

puts "Creating #{Artist.count} entries in the Artist's table."
puts "and . . ."
puts "Creating #{Album.count} entries in the Album's table."
puts "and . . ."
puts "Creating #{Song.count} entries in the Song's table."