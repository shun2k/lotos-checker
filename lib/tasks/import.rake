require 'csv'


namespace :import do
  #このdescはdescribeのdesc
  desc "Import loto7 from csv"

  task loto7: :environment do
    path = File.join Rails.root, "db/csv/loto7.csv"
    puts "path: #{path}"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        times: row["times"],
        first: row["first"],
        second: row["second"],
        third: row["third"],
        forth: row["forth"],
        fifth: row["fifth"],
        sixth: row["sixth"],
        seventh: row["seventh"],
        bonusfirst: row["bonusfirst"],
        bonussecond: row["bonussecond"],
        announcement: row["announcement"],
        firstcounts: row["firstcounts"],
        secondcounts: row["secondcounts"],
        thirdcounts: row["thirdcounts"],
        forthcounts: row["forthcounts"],
        fifthcounts: row["fifthcounts"],
        sixthcounts: row["sixthcounts"]
      }
    end
    puts "start to create loto7 data"
    begin
      Loto7.create!(list) #クラス名注意
      puts "completed!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "raised error : unKnown attribute "
    end
  end
end