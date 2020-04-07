class RemovetccfFromInd1s < ActiveRecord::Migration[6.0]
  def change
  	remove_column :ind1s,:tccf,:integer
  end
end
