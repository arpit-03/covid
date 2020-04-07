class RemovetccfFromInd1 < ActiveRecord::Migration[6.0]
  def change
  	remove_column :ind1,:tccf,:integer
  end
end
