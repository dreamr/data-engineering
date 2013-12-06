require 'csv'

# used to import purchases from an tab delim file
module PurchasesFromTabFile
  extend self

  # import each row into some models
  # Tie the data together through the purchase
  def call(file, objects, map_object)
    CSV.parse(file, col_sep: "\t", headers: true).map do |row|
      hash = row.to_hash
      objects.each {|obj| obj.import hash }

      map_object.import(hash).map_child_data(*objects)
    end
  end

end
