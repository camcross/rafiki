class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :answer

    	#Foreign Key: Each Question belongs_to a Test
    	t.integer :test_id

    	t.timestamps
    end
  end
end
