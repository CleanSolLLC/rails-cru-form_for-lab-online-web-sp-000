class Genre < ApplicationRecord
  belongs_to :artist, :song
end
