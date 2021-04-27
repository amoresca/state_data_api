require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'combined-data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  State.create(row.to_hash)
end