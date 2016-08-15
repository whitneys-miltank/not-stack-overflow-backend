class CreateAnswer < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id, :null => false
      t.integer :question_id, :null => false
      t.string :message, :null => false
      t.datetime :created_at, :null => false
    end
  end
end
