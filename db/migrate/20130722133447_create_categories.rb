class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :code,            :null => false, :limit => 64,  comment: ''
      t.string 	:name,  		    :null => false, :limit => 64,  comment: ''
      t.string  :en_name,       :null => false, :limit => 64,  comment: ''
      t.integer :services_count,:null => false, :default => 0, comment: ''
      t.boolean :normal,        :null => false, :default => true, comment: ''
      t.timestamps
    end
     add_index :categories, :code,    unique: true
     add_index :categories, :name,    unique: true
     add_index :categories, :en_name, unique: true
  end
end
