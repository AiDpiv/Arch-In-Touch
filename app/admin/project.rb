ActiveAdmin.register Project do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
# has_many :pictures

menu priority: 0
permit_params :name, :location, :size, :status, :year, :description
sidebar "Project Details", only: [:show, :edit] do
  ul do
    li link_to "Picture",    admin_project_pictures_path(resource)
  end
end

index do
  selectable_column
  column :name
  column :location
  column :size
  column :status
  column :year
  column :description
  actions defaults: false do |post|
    item "View ", admin_project_path(post)
    item "Edit ", edit_admin_project_path(post)
    item "Delete", admin_project_path(post), method: :delete
  end

end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
