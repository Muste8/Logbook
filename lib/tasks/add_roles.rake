namespace :db do
    desc 'Add two roles to the database'
    task add_roles: :environment do
      # Define role name
      role_names = %w[Manager Cashier]
  
      role_names.each do |name|
        Role.find_or_create_by(name:)
        puts "Role '#{name}' added."
      end
  
      puts 'Roles added succesfully'
    end
  end