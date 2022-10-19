# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
{Physics: 'PG-Block',Chemistry: 'PG-Block',Biology: 'PG-Block', Computer_Science: 'Main_building',Mathmathics: 'MS-Block', Statistics: 'MS-Block'}.each do |hash, key|
  Department.find_or_create_by(d_name: hash, d_location: key)
end

{OperatingSystem: 'CS-OS-1202',SoftwareEngneering: 'CS-SE-1203',DataStructures: 'CS-DSA-1204', ComputerArchitecture: 'CS-CSA-1205', Algebra: 'CS-AG-1206',AnalyticalReasoning: 'CS-OS-1207',ArtificialIntelligence: 'CS-AI-1208'}.each do |hash, key|
  Course.find_or_create_by(c_name: hash, c_title: key)
end