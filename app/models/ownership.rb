class Ownership < ActiveRecord::Base
  attr_accessible :pick, :round, :team_name

  def fetch_player(draft_rule_obj)
  	Player.find(draft_rule_obj.pick+1)
  end

end
