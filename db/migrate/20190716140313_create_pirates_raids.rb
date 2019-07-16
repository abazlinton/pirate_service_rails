class CreatePiratesRaids < ActiveRecord::Migration[5.2]
  def change
    create_table :pirates_raids do |t|
      t.references :pirate, foreign_key: true
      t.references :raid, foreign_key: true

      t.timestamps
    end
  end
end
