class AddColumnsForPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :name,      :string,	 :null => false, :limit => 32, :comment => 'name'
  	add_column :players, :phone,		 :string,	 :null => false, :limit => 20, :comment => 'phone number'
  	add_column :players, :avatar,		 :string,	 :null => true,  :limit => 64, :comment => 'img'
  	add_column :players, :gender,		 :integer, :null => false, :default => 1, :comment => 'gender'
  	add_column :players, :level,		 :integer, :null => false, :default => 0, :comment => 'level'
  	add_column :players, :experience,:integer, :null => false, :default => 0, :comment => 'experience'
    add_column :players, :qq,        :string,  :null => true,  :limit => 13, :comment => 'qq'
    add_column :players, :taobao,    :string,  :null => true,  :limit => 64, :comment => 'taobao'
  	add_column :players, :is_master, :boolean, :null => false, :default => false, :comment => 'is master'
  	add_column :players, :is_super,	 :boolean, :null => false, :default => false, :comment => 'is super'
  	add_column :players, :master_no, :integer, :null => false, :default => 0,     :comment => ''  
    add_column :players, :normal,    :boolean, :null => false, :default => true,  :comment => '' 
    #
    #add_index :players, :qq,                :unique => true
  end
end
