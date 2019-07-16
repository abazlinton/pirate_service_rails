class CreateRaids < ActiveRecord::Migration[5.2]
  def change
    create_table :raids do |t|
      t.string :location
      t.integer :loot

      t.timestamps
    end
  end
end
