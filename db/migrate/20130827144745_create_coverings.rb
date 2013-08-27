class CreateCoverings < ActiveRecord::Migration
  def change
    create_table :coverings do |t|
      t.string :region_code,          :null => false, :limit => 64
      t.string :service_code,         :null => false, :limit => 64
      t.boolean :normal,    		  :null => false, :default => true
      t.timestamps
    end
  end
end
