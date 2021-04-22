class RemoveIndexTraineesOnUserId < ActiveRecord::Migration[6.1]
  def change
    remove_index :trainees, 'index_trainees_on_user_id'
  end
end
