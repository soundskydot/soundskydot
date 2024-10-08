ActiveAdmin.register_page "Play" do
    menu label: "User"

    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    # Uncomment all parameters which should be permitted for assignment
    #
    # permit_params :name, :email
    #
    # or
    #
    # permit_params do
    #   permitted = [:name, :email]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
    
    content do
      @song = Song.last  
      render partial: "playing", locals: {song: @song}
    end
  end
  