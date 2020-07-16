class Song < ApplicationRecord
  include ActiveModel::Validations
  validates :title, presence: true
  #validates :title, uniqueness: { scope: [:artist_name, :release_year]}

  validates :artist_name, presence: true

  validates :released, exclusion: { in: [nil]}

  validates :release_year, if:  :released, presence: true


end
