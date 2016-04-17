class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
    	t.text :body
    	t.string :mood
    	t.string :location

      	t.timestamps
    end
  end
end
