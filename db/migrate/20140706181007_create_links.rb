class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.string :body

    	t.integer :guide_id
    end
  end
end
