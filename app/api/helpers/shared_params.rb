module SharedParams
  extend Grape::API::Helpers

  params :pagination do
    optional :page, type: Integer,
                    desc: 'Page number'
    optional :count, type: Integer, default: 25, values: 1..100,
                     desc: 'The number of potential item results to retrieve per page. This value has a maximum of 100.'
  end
end
