class CreateStatentries < ActiveRecord::Migration[5.2]
  def change
    create_table :statentries do |t|
      t.integer :unit_id
      t.integer :ability_id

      t.timestamps
    end
  end
end
