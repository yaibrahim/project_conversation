# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create Users
user1 = User.create!(email: 'user1@example.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 'user2@example.com', password: 'password', password_confirmation: 'password')
user3 = User.create!(email: 'user3@example.com', password: 'password', password_confirmation: 'password')

# Create Projects
project1 = Project.create!(name: 'Project Alpha', status: 'Pending', user: user1)
project2 = Project.create!(name: 'Project Beta', status: 'In Progress', user: user2)
project3 = Project.create!(name: 'Project Gamma', status: 'Completed', user: user3)

# Create Comments
Comment.create!(content: 'Initial discussion on Alpha.', user: user1, project: project1)
Comment.create!(content: 'Beta is progressing well.', user: user2, project: project2)
Comment.create!(content: 'Gamma has been completed successfully.', user: user3, project: project3)
