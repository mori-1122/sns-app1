require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SnsApp1
  class Application < Rails::Application
    # Bootstrap の SCSS を vendor/assets/stylesheets から読み込めるようにする
    config.assets.paths << Rails.root.join("vendor/assets/stylesheets")
  end
end
