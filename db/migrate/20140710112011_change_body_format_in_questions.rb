class ChangeBodyFormatInQuestions < ActiveRecord::Migration
  def change
  	change_column :questions, :body, :text
  end
end
