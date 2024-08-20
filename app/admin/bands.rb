ActiveAdmin.register Band do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :name, members_attributes: [:id, :name, :position, :royalty, :wallet, :_destroy]

  form do |f|    
    f.inputs 'Details' do
      f.input :name
    end
    f.inputs 'Members' do
      f.has_many :members, heading: false, allow_destroy: true do |m|
        m.input :name
        m.input :position
        m.input :royalty
        m.input :wallet
      end
    end
    f.actions
  end
  
  show title: :name do
    attributes_table do
      # Display the band's attributes
      row :name
      row :created_at
      row :updated_at
      # Add other rows as needed
    end
    panel "Member" do
      table_for band.members do
        column :name
        column :position
        column :royalty
        column :wallet
      end
    end
  end
end
