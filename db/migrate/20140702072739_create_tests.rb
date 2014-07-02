class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
    	t.string :body

    	#Foreign Key: Each Test belongs_to a Module
    	t.integer :module_id

    	t.timestamps
    end
  end
end
