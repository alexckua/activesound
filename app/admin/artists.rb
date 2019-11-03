 ActiveAdmin.register Artist do
  permit_params :title, :description, :avatar

  remove_filter :avatar_attachment, :description, :avatar_blob, :created_at, :updated_at

  form partial: 'form'

  index do
    selectable_column
    artist_columns.each { |title| column title }

    column :avatar do |artist|
      image_tag(artist.attachment_url, class: 'admin-index-image') if artist.attachment_url
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :description

      row :avatar do |artist|
        image_tag artist.attachment_url if artist.attachment_url
      end

      resource.albums&.each do |item|
        row :album do
          link_to(item.title, admin_album_path(item))
        end
      end
    end
  end
end

def artist_columns
  %w[
    id
    title
  ]
end