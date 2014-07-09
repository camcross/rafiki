class CreateMentorships < ActiveRecord::Migration
  def change
    create_table :mentorships do |t|
    	t.string :status

    	t.integer :enrollment_id

    	t.integer :tutor_id
    end
  end
end
