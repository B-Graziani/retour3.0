puts "cleaning database..."
Flat.destroy_all
puts "creating database..."
flat1 = { title: "TITLE1", address: "ADDRESS1", description: "DESCRIPTION1DESCRIPTION1DESCRIPTION1", stars:"1" }
flat2 = { title: "TITLE2", address: "ADDRESS2", description: "DESCRIPTION2DESCRIPTION2DESCRIPTION2", stars:"2" }
flat3 = { title: "TITLE3", address: "ADDRESS3", description: "DESCRIPTION3DESCRIPTION3DESCRIPTION3", stars:"3" }
flat4 = { title: "TITLE4", address: "ADDRESS4", description: "DESCRIPTION4DESCRIPTION4DESCRIPTION4", stars:"4" }
flat5 = { title: "TITLE5", address: "ADDRESS5", description: "DESCRIPTION5DESCRIPTION5DESCRIPTION5", stars:"5" }
Flats = []
[flat1, flat2, flat3, flat4, flat5].each_with_index do |attributes, index|
flat = Flat.create!(attributes)
Flats << flat
end
