class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.time :time_created
      t.date :date_created
      t.integer :ttcci
      t.integer :ttccf
      t.integer :tcured
      t.integer :tdeath

      t.timestamps
    end
  end
end
