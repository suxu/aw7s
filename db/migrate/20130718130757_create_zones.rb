class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string    :code,        :null => false, :limit => 32, :comment => ''
      t.string 		:region_code, :null => false, :limit => 32, :comment => ''
      t.boolean   :normal,    :null => false, :default => true, :comment => ''
      t.string 		:remark,    :null => true,  :limit => 124, :comment => ''
      
      t.timestamps
    end
     # execute "ALTER TABLE zones ADD PRIMARY KEY (id);"
      add_index :zones, :code, unique: true
  end

end
