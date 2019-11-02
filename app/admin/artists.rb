ActiveAdmin.register Artist do
  permit_params :title, :description, :avatar

  form partial: 'form'

  index do
    selectable_column
    artist_columns.each { |title| column title }

    column :avatar do |artist|
      image_tag artist.avatar_url
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :avatar do |artist|
        image_tag artist.avatar_url
      end
    end
  end
end

def artist_columns
  %w[
    id
    title
    description
    created_at
    updated_at
  ]
end