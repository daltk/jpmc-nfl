require 'csv'

desc "Import Ownerships from csv file"
task :import_ownerships => [:environment] do

  file = "db/order.csv"

  CSV.foreach(file, :headers => true) do |row|
    Ownership.create(
      :round => row[0],
      :pick => row[1],
      :team_name => row[2]
    )
  end

end