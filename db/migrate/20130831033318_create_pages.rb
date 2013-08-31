class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title,          :null => false, :limit => 128
      t.string :url,			:null => false, :limit => 255
      t.string :domain,			:null => false, :limit => 128
      t.string :keywords,		:null => true
      t.string :summary,		:null => true
      t.integer :player_id,		:null => false, :default => 0
      t.string 	:player_name,	:null => false
      t.boolean :original,		:null => false, :default => false
      t.integer :read_count,	:null => false,	:default => 0
      t.boolean :is_banner,		:null => false,	:default => false
      t.boolean :normal,     :null => false, :default => true
      t.datetime :published_at,	:null => true
      t.timestamps
    end
  end
end
