class FixTraineeOnUsersIndexes < ActiveRecord::Migration[6.1]
  def change
    add_index :trainees, :user_id
    remove_index :trainees, name: 'index_trainees_on_trainer_id'
  end
end
