class CreateRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :participant, foreign_key: true
      t.references :artwork, foreign_key: true
      t.string :relationship_type
    end
  end
end
