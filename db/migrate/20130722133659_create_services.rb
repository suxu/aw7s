class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :code,          :null => false, :limit => 64
      t.string :category_code, :null => false, :limit => 64
      t.string :name,         :null => false, :limit => 128
      t.string :full_name,    :null => true, :limit => 64
      t.string :caption,     :null => false, :limit => 128
      t.string :url,	       :null => true,  :limit => 255
      t.boolean :is_new,     :null => false, :default => false
      t.boolean :normal,     :null => false, :default => true
      t.integer :regions_count, :null => false, :default => 0
      # t.string :icon,	:null => true,	
      # t.string :host,	:null => true,	:limit => 200

      t.timestamps
    end
    add_index :services, :code,    unique: true
  end
end
