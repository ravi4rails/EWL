ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :name, :role, :contact1, :contact2, :address, :profile_image

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :role
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :name
      f.input :contact1
      f.input :contact2
      f.input :role
      f.input :address
      f.input :profile_image
    end
    f.actions
  end
end
