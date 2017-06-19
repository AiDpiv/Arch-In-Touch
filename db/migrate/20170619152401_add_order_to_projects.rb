class AddOrderToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :projects_order, :integer
  end
end
