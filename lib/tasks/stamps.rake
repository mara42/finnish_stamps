require 'csv'

namespace :stamps do
  desc "Pull stamps data from CSV file to db"
  task seed_stamps: :environment do

    #  Stamp.destroy_all
    #  Tag.destroy_all
    #  Tagging.destroy_all   #drop the old table data before importing the new stuff

     CSV.foreach("db/postimerkit2014.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Stamp.create(
        tag_list: row[0],
        release_date: row[1],
        end_of_use: row[2],
        nominal_value: row[3].gsub(",",".").to_f,
        name: row[4],
        colour: row[5],
        place_of_printing: row[6],
        amount_printed: row[7].to_i,
        artist: row[8],
        currency: row[9],
        image_url: row[10]
     )
     end
     
  end

end
