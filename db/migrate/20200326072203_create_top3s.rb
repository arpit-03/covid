class CreateTop3s < ActiveRecord::Migration[6.0]
  def change
    create_table :top3s do |t|
      t.integer :post_id

      t.timestamps
    end
  end
end
