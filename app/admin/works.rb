ActiveAdmin.register Work do
  permit_params :name, :description, :icon

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :icon
    column :created_at
    actions
  end

end
