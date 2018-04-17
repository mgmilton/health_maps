class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :healths, foreign_key: true
      t.string :content
      t.string :answer
    end
  end
end
