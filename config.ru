require_relative "./config/environment"

if ActiveRecord::Migrate.needs_migration?
  raise "Migrations are pending. Run 'rake db:migrate' to resolve this issue."
end

use Rack::MethodOverride
run ApplicationController
