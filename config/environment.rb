require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'
require_relative '../lib/bookshelf'
require_relative '../apps/api/application'
require_relative '../apps/admin/application'
require_relative '../apps/web/application'

Hanami.configure do
  mount Api::Application, at: '/api'
  mount Admin::Application, at: '/admin'
  mount Web::Application, at: '/'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/bookshelf_development.sqlite3'
    #    adapter :sql, 'postgresql://localhost/bookshelf_development'
    #    adapter :sql, 'mysql://localhost/bookshelf_development'
    #
    adapter :sql, ENV.fetch('DATABASE_URL')

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/bookshelf/mailers'

    # See http://hanamirb.org/guides/mailers/delivery
    # delivery :test
  end

  environment :development do
    # See: http://hanamirb.org/guides/projects/logging
    logger level: :debug

    mailer do
      delivery :smtp, address: "127.0.0.1", port: 1025
    end
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV.fetch('SMTP_HOST'), port: ENV.fetch('SMTP_PORT')
    end
  end
end
