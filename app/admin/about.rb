ActiveAdmin.register About do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
menu priority: 1
permit_params :paragraph
form do |f|
  f.inputs do
    f.input :paragraph, as: :html_editor
  end

  f.button
end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
