class Tag < ApplicationRecord
    has_many :taggins
    has_many :taggings, :dependent => :destroy
    has_many :stamps, through: :taggings

end

