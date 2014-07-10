class ChangeBodyInQuestions < ActiveRecord::Migration
  def change
  	change_column :body, :string, :text
  end
end
