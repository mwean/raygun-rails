require 'factory_girl'

namespace :db do
  desc 'Load a small, representative set of data so that the application can start ' \
       'in a useable state (for development).'
  task sample_data: :environment do
    include FactoryGirl::Syntax::Methods
  end
end
