# frozen_string_literal: true

require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use UsersController
run ApplicationController
use ReviewsController
use VlogsController
