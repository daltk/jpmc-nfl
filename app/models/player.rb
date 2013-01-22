class Player < ActiveRecord::Base
  attr_accessible :name, :position
  scope :fetch_top_10_players, lambda { limit(10) }
  scope :still_draftable, lambda { where('status ISNULL').order('name asc') }

end
