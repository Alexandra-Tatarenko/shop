namespace :db do
	  desc "versions of migration that are applied"
	  task :schema_migrations => :environment do
	  	puts ActiveRecord::Base.connection.select_values( 'select
	  version from schema_migrations order by version' )
	  end
end
