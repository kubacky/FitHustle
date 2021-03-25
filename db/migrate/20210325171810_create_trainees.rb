class CreateTrainees < ActiveRecord::Migration[6.1]
  def change
    create_table :trainees do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :weight
      t.integer :height
      t.date :date_of_birth
      t.timestamps
    end
  end
end
