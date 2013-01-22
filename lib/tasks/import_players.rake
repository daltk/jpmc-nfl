require 'csv'

desc "Import players from csv file"
task :import_players => [:environment] do

  file = "db/players.csv"

  CSV.foreach(file, :headers => true) do |row|
    Player.create(
      :name => row[0],
      :position => row[1],
    )
  end

end