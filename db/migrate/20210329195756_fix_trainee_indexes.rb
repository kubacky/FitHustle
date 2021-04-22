class FixTraineeIndexes < ActiveRecord::Migration[6.1]
  def change
    add_index :trainees, :user_id
    remove_index :trainees, name: 'index_trainees_on_user_id'
  end
end
