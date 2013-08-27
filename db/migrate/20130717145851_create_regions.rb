class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :code,          :null => false, :limit => 32,  :comment => 'code'
      t.string :name,	         :null => false, :limit => 64,  :comment => 'zh name'
      t.string :en_name,       :null => false, :limit => 64,  :comment => 'en name'
      t.integer :ping_count,     :null => false, :default => 0, :comment => ''
      t.integer :avg_speed,      :null => false, :default => 0, :comment => ''
      t.integer :zones_count,    :null => false, :default => 0, :comment => ''
      t.integer :services_count, :null => false, :default => 0, :comment => ''
      t.boolean :normal,         :null => false, :default => true, :comment => ''
      t.timestamps
    end
    add_index :regions, :code, unique: true

    # execute "ALTER TABLE regions ADD PRIMARY KEY (id);"
    #add_index :regions, :id,      unique: true
    #add_index :regions, :name,    unique: true
    #add_index :regions, :en_name, unique: true

  end
end
