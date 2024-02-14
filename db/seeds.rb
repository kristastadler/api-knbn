# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Board.destroy_all
Container.destroy_all
Card.destroy_all

Board.create!([{
  title: "Things to Do",
  description: "A list of my things to do",
  privacy: "private"
},
{
    title: "Company Things to Do",
    description: "A list of my things for my team to do",
    privacy: "public"
},
])

p "Created #{Board.count} boards"

boards = Board.all 

boards.each do |board|
    board.containers.find_or_create_by!(title: "To Do")
    board.containers.find_or_create_by!(title: "Doing")
    board.containers.find_or_create_by!(title: "Done")
end

p "Created #{Container.count} containers"

containers = Container.all

containers.each do |container|
    container.cards.find_or_create_by!(title: 'Here is a card for the container!')
end

p "Created #{Card.count} cards"
