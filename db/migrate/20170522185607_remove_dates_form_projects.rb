class RemoveDatesFormProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :created_at
    remove_column :projects, :updated_at
  end
end
