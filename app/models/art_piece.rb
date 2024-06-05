class ArtPiece < ApplicationRecord
  include Rails.application.routes.url_helpers
  include Auditable

  belongs_to :artist

  def path
    art_piece_path(self)
  end
end
