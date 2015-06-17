ActiveAdmin.register Contact do


  filter :created_at
  filter :name


  index do
    column :name

    actions
  end

end
