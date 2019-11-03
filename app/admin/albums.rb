ActiveAdmin.register Album do
  permit_params :title, :description, :cover, :artist_id

  remove_filter :cover_attachment, :description, :cover_blob, :created_at, :updated_at

  form partial: 'form'

  index do
    selectable_column
    album_columns.each { |title| column title }

    column :cover do |album|
      image_tag(album.attachment_url, class: 'admin-index-image') if album.attachment_url
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

      resource.songs&.each do |song|
        row :track do
          content_tag(:span, song.title, class: 'admin-show-song-title') +
          audio_tag(song.attachment_url, controls: true, class: 'admin-show-song')
        end
      end
    end
  end
end

def album_columns
  %w[
    id
    title
    artist
  ]
end