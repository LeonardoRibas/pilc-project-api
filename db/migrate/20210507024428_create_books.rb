class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.boolean :rewardable
      t.text :first_question
      t.text :second_question
      t.text :third_question

      t.timestamps
    end
  end
end
