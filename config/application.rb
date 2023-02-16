require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.

Bundler.require(*Rails.groups)

module Inn
  class Application < Rails::Application
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.test_framework :test_unit, fixture: false
    end
    # Initialize configuration defaults for originally generated Rails version.

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.i18n.available_locales = [:fr, :en]
    config.i18n.default_locale = :fr
    config.i18n.fallbacks = true
    config.exceptions_app = self.routes
    config.assets.precompile << 'amp/application.scss'
    config.active_job.queue_adapter = :sidekiq
    # overrides = "#{Rails.root}/app/overrides"
    # Rails.autoloaders.main.ignore(overrides)
    # config.to_prepare do
    #   Dir.glob("#{overrides}/**/*_override.rb").each do |override|
    #     load override
    #   end
    # end
  end
end
