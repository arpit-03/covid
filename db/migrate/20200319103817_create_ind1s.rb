class CreateInd1s < ActiveRecord::Migration[6.0]
  def change
    create_table :ind1s do |t|
      t.string :name
      t.integer :tcci 
      t.integer :tccf
      t.integer :cured
      t.integer :death 

      t.timestamps
    end
  end
end
