class Product < ApplicationRecord
 belongs_to :store

 has_one  :category

 def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("LOWER(name) LIKE ?", "%#{search}%")
 end

end
