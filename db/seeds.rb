# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

e1_atts = {
  first_name: "Default",
  last_name: "User",
  hire_date: Time.now,
  title: "Placeholder",
  internal_handle: "default"
}

Employee.create(e1_atts)

da_vinci = Artist.create!(
  first_name: "Leonardo",
  last_name: "da Vinci"
)

ap1 = ArtPiece.create!(
  title: "Mona Lisa",
  artist: da_vinci
)