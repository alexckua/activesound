ActiveAdmin.register Song do
  permit_params :title, :track, :artist_id, :album_id

  form partial: 'form'

  index do
    selectable_column
    song_columns.each { |title| column title }
    actions
  end

  show do
    attributes_table do
      row :title
      row :artist
      row :album
      row :track do |song|
        link_to('File', song.attachment_url, target: '_blank', download: true) if song.attachment_url
      end
    end
  end
end

def song_columns
  %w[
    id
    title
    artist
    album
  ]
end