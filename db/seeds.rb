puts "---Beginning Seed---"


#Create Organizations
puts "Adding organizations..."
15.times do |i|
  Organization.create(
    name: "Company#{i+1}",
    website: "http://www.company#{i+1}.com"
  )
end
organizations = Organization.all
puts "#{organizations.count} organizations in database."

puts "---Seed Complete---"