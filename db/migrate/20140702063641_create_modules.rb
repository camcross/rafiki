class CreateModules < ActiveRecord::Migration
  def change
    create_table :modules do |t|
    	t.string :name
    	t.integer :points
    	t.text :description

    	#Foreign Key: Each Module belongs_to a Course
    	t.integer :course_id

    	#Foreign Key: Each Module belongs_to a User(whoever uploaded the content)
    	t.integer :user_id

    	t.timestamps
    end
  end
end
