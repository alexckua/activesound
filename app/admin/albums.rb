ActiveAdmin.register Album do
  permit_params :title, :description, :cover, :artist_id

  form partial: 'form'

  index do
    selectable_column
    album_columns.each { |title| column title }

    column :cover do |album|
      image_tag album.attachment_url if album.attachment_url
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :artist
      row :cover do |album|
        image_tag album.attachment_url if album.attachment_url
      end
    end
  end
end

def album_columns
  %w[
    id
    title
    description
    artist
  ]
end