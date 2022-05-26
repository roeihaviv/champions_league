namespace :slurp do
  desc "TODO"
  task transactions: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "champions_league_database.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      c = Club.new
      c.club_name = row["Club Name"]
      c.country = row["Country"]
      p c.logo = row["Logo"]
      c.founding_year = row["Founding Year"]
      c.stadium_id = row["Stadium"]
  
      c.save
    end
  end

end
