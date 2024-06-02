class ArtPiece < ApplicationRecord
  include Auditable

  belongs_to :artist
end
