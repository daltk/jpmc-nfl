require 'csv'

desc "Import teams from csv file"
task :import_teams => [:environment] do

  file = "db/teams.csv"

  CSV.foreach(file, :headers => true) do |row|
    Team.create(
      :team_name => row[0],
      :division => row[1],
    )
  end

end