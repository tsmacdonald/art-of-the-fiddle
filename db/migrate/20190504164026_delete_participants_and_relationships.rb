class DeleteParticipantsAndRelationships < ActiveRecord::Migration[5.2]
  def change
    drop_table :relationships
    drop_table :participants
  end
end
