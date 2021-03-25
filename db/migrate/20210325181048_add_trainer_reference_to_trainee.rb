class AddTrainerReferenceToTrainee < ActiveRecord::Migration[6.1]
  def change
    add_reference :trainees, :trainer, foreign_key: true
  end
end
