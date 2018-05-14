class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question, default: ""
      t.string :answer, default: ""
      t.references :assessment, foreign_key: true

      t.timestamps
    end
  end
end
