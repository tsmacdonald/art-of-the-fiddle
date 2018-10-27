class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.integer :earliest_year
      t.integer :latest_year
      t.string :title
      t.string :notes

      t.timestamps
    end
  end
end
