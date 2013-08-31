class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name,        :null => false, :limit => 128
      t.string :url,		     :null => false, :limit => 128
      t.string :domain,		   :null => false,	:limit => 128
      t.string :favicon,	   :null => true
      t.boolean :normal,     :null => false, :default => true
      t.integer :pages_count, :null => false, :default => 0
      t.timestamps
    end
  end
end
