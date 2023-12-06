class HomeController < ApplicationController
    
    def index
        @user_customer_counts = User.left_joins(:customers)
        .group('users.id')
        .select('users.id, users.username, COUNT(customers.id) as customer_count')
    end
    
    def about
    end
  
end