
# This is an idempotant script which will draft inputted number of players.

desc "Perform Draft process as per the draft order."
task :start_draft_process  => :environment do 

   #puts "Player:#{Player.first}"
   #puts "Team:#{Team.first}"
   #puts "Ownership:#{Ownership.first}"
   #puts "Draft:#{Draft.first}"

   #Ownership.all.each do | draft_rule_obj |
    Ownership.limit(100).each do | draft_rule_obj |

     player_obj = draft_rule_obj.fetch_player(draft_rule_obj)

     #Update player as selcted i.e. 'S'  and Insert a new row in Drafts table as we have selcted one player.
     unless player_obj.status == 'S'
       player_obj.update_attribute(:status,'S') 
       Draft.create(:d_player => player_obj.name, :d_position => player_obj.position, :d_round => draft_rule_obj.round, :d_team => draft_rule_obj.team_name)
       #puts "Player:#{player_obj.name}, #{player_obj.status}"
     end
    end
end