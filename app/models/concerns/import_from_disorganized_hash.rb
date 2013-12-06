# this module allows an activerecord object to import recordsets from a tab-delimited file
module ImportFromDisorganizedHash

  # creates a new record of this type with santized attributes and values
  def import(hash)
    attributes = sanitize_attributes(hash)
    create!(attributes)
  end

  # creates a hash from the old hash, discarding model names and attrs not on this model
  def sanitize_attributes(hash)
    attributes = hash.map do |k,v|
      new_key = k.to_s.split(" ")[1]
      [new_key.to_sym, v] if self.new.respond_to?(new_key)
    end.compact
    Hash[attributes]
  end

end
