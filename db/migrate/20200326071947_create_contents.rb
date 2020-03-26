class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :author
      t.datetime :date
      t.string :metakey
      t.string :metadesc

      t.timestamps
    end
  end
end
