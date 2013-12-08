##### Users #####

FactoryGirl.create(:admin, email: 'admin@example.com', password: 'rhok2013')
FactoryGirl.create(:user, email: 'user@example.com', password: 'rhok2013')

##### Tags #####

# Tag.delete_all

tag_attributes = File.open("#{Rails.root}/db/seeds/symtoms.txt").each_line.map do |tag_name|
  { name: tag_name, category: 'symtoms' }
end

puts "Importing #{tag_attributes.count} tags, it could take a while..."

Tag.create(tag_attributes)
