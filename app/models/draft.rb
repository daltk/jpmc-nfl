class Draft < ActiveRecord::Base
  attr_accessible :d_player, :d_position, :d_round, :d_team
  scope :latest_3_picks, lambda { order('created_at desc').limit(3) }

  def self.fetch_team_drafts(team_name)
  	self.where "d_team like '#{team_name}'"
  end

  def self.fetch_round_drafts(round)
  	self.where "d_round = #{round}"
  end
end
