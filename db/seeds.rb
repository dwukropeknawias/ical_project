# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create!(index: "235000",
                first_name: "Daniel",
                last_name: "Nowak",
                field_of_study: "TIN",
                password:              "admin1",
                password_confirmation: "admin1",
                admin: true)



99.times do |n|

  if n<9
    index = "23500#{n+1}"
  else
    index = "2350#{n+1}"
  end
    first_name = "Machine#{n+1}"
    last_name = "Robot#{n+1}"
    field_of_study = "TIN"
    password = "password"
    Student.create!(index: index,
                  first_name: first_name,
                  last_name: last_name,
                  field_of_study: field_of_study,
                  password:              password,
                  password_confirmation: password)
end

 # students = Student.order(:created_at).take(6)

#60.times do
#  name = "lsk"
#  lecturer = "pan"
#  location = "w4"
#  students.each { |student| student.events.create!(name: name, lecturer: lecturer, location: location) }
#end
