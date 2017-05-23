class AddColumnsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :size, :string
    add_column :projects, :year, :string
    add_column :projects, :status, :string
  end
end
