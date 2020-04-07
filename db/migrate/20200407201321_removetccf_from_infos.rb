class RemovetccfFromInfos < ActiveRecord::Migration[6.0]
  def change
  	remove_column :infos,:ttccf,:integer
  end
end
