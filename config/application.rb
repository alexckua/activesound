require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Activesound
  class Application < Rails::Application
    config.load_defaults 6.0
    config.app_generators.scaffold_controller :responders_controller
    config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
    config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]
    config.middleware.insert_before(0, Rack::Cors) do
      allow do
        origins ENV['ALLOWED_ORIGINS'].split(',')
        resource '*', headers: :any, methods: %i[get post put patch delete options]
      end
    end
  end
end
