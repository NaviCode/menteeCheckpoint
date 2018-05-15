class CreateQuestionChats < ActiveRecord::Migration[5.2]
  def change
    create_table :question_chats do |t|
      t.references :question, foreign_key: true
      t.string :chat

      t.timestamps
    end
  end
end
