# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.create!(name: 'Cañota', description: 'diseño general')
Project.create!(name: 'Caelis')
Project.create!(name: 'Bella Vista', description: 'Diseño Web')
Project.create!(name: 'Envelat', description: 'Diseño Identidad')
Project.create!(name: 'Tikets', description: 'Mantenimiento de diseño')
Project.create!(name: 'Estupendu', description: 'Diseño Web')
TimeEntry.create project_id:1, hours: 2, minutes:10
TimeEntry.create project_id:1, hours: 0, minutes:40
TimeEntry.create project_id:2, hours: 5, minutes:60
TimeEntry.create project_id:2, hours: 2, minutes:40
TimeEntry.create project_id:3, hours: 0, minutes:10
TimeEntry.create project_id:3, hours: 0, minutes:30
TimeEntry.create project_id:4, hours: 0, minutes:10
TimeEntry.create project_id:4, hours: 10, minutes:10
TimeEntry.create project_id:5, hours: 5, minutes:50
TimeEntry.create project_id:5, hours: 7, minutes:12
TimeEntry.create project_id:6, hours: 0, minutes:14
TimeEntry.create project_id:6, hours: 1, minutes:22
