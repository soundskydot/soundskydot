ActiveAdmin.register Song do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :band_id, :price, :year, :album, :title, :lagu
  #
  # or
  #
  # permit_params do
  #   permitted = [:band_id, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      input :band
      input :album
      input :title
      input :year
      input :price
      input :lagu, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :album
      row :title
      row :band
      row :year
      row :price

      # Display the audio player
      row :lagu do |band|
        if band.lagu.attached?
          audio_tag url_for(band.lagu), controls: true
        else
          "No audio file available"
        end
      end
    end
  end
  
  filter :title
  filter :band_name_cont, as: :string, label: 'Band'
end
