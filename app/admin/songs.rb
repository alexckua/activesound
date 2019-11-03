ActiveAdmin.register Song do
  permit_params :title, :track, :artist_id, :album_id

  remove_filter :track_attachment, :track_blob, :created_at, :updated_at

  form partial: 'form'

  index do
    selectable_column
    song_columns.each { |title| column title }

    column :track do |song|
      audio_tag(song.attachment_url, controls: true) if song.attachment_url
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :artist
      row :album
      row :track do |song|
        audio_tag(song.attachment_url, controls: true) if song.attachment_url
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