class CreatePings < ActiveRecord::Migration
  def change
    create_table :pings do |t|
      t.string  :region_code, 		:null => false, :limit => 32, :comment => ''
      t.string 	:ip,		  		    :null => false, :limit => 15, :comment => ''
      t.string  :user_agent,	  	:null => false, :limit => 124, :comment => ''
      t.integer :speed,		  		  :null => false, :default => 0, :comment => ''
      t.integer :player_id,			  :null => false, :default => 0, :comment => ''

      t.timestamps
    end
  end
end
