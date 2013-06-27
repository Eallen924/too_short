class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string  :short_url, :null => false
      t.string  :long_url, :null => false
      t.integer :counter, :default => 0
      t.timestamps
    end
  end
end
