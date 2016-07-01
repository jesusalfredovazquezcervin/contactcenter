class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.references :user, index: true
      t.references :company, index: true
      t.integer :question1
      t.integer :question2
      t.integer :question3
      t.integer :question4
      t.integer :question5

      t.timestamps
    end
  end
end
