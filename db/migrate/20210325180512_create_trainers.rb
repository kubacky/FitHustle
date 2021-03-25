class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.references :user, index: true, foreign_key: true
      t.string :description
      t.timestamps
    end
  end
end
