namespace :db do
    desc "Add products to customer carts"
    task add_products_to_carts: :environment do
        customer = Customer.pluck(:id)

        Product.create!(
            [
                { name: "Mix - Cocktail Ice Cream", price: 27, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Sprite, Diet - 355ml", price: 43, quantity: 10, customer_id: "#{customer.sample}" },
                { name: "Soup Campbells - Tomato Bisque", price: 75, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Milk - 2% 250 Ml", price: 34, quantity: 15, customer_id: "#{customer.sample}" },
                { name: "Juice - Ocean Spray Kiwi", price: 27, quantity: 25, customer_id: "#{customer.sample}" },
                { name: "Sauce - Cranberry", price: 95, quantity: 19, customer_id: "#{customer.sample}" },
                { name: "Cucumber - English", price: 67, quantity: 10, customer_id: "#{customer.sample}" },
                { name: "Mushroom - Enoki, Dry", price: 12, quantity: 16, customer_id: "#{customer.sample}" },
                { name: "Flour - Chickpea", price: 17, quantity: 14, customer_id: "#{customer.sample}" },
                { name: "Gin - Gilbeys London, Dry", price: 79, quantity: 10, customer_id: "#{customer.sample}" },
                { name: "Wine - Placido Pinot Grigo", price: 44, quantity: 22, customer_id: "#{customer.sample}" },
                { name: "Sole - Dover, Whole, Fresh", price: 74, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Beef - Tongue, Fresh", price: 39, quantity: 13, customer_id: "#{customer.sample}" },
                { name: "Table Cloth 62x114 Colour", price: 45, quantity: 9, customer_id: "#{customer.sample}" },
                { name: "Cut Wakame - Hanawakaba", price: 86, quantity: 23, customer_id: "#{customer.sample}" },
                { name: "Flour - Fast / Rapid", price: 86, quantity: 13, customer_id: "#{customer.sample}" },
                { name: "Mushroom - Shitake, Fresh", price: 74, quantity: 21, customer_id: "#{customer.sample}" },
                { name: "Vodka - Moskovskaya", price: 31, quantity: 25, customer_id: "#{customer.sample}" },
                { name: "Coffee Caramel Biscotti", price: 67, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Bar Mix - Lime", price: 59, quantity: 11, customer_id: "#{customer.sample}" },
                { name: "Oven Mitts 17 Inch", price: 51, quantity: 19, customer_id: "#{customer.sample}" },
                { name: "Oil - Peanut", price: 89, quantity: 22, customer_id: "#{customer.sample}" },
                { name: "Cookie Double Choco", price: 76, quantity: 12, customer_id: "#{customer.sample}" },
                { name: "Pasta - Bauletti, Chicken White", price: 3, quantity: 22, customer_id: "#{customer.sample}" },
                { name: "Bag - Regular Kraft 20 Lb", price: 100, quantity: 12, customer_id: "#{customer.sample}" },
                { name: "Veal - Kidney", price: 89, quantity: 24, customer_id: "#{customer.sample}" },
                { name: "Syrup - Monin - Passion Fruit", price: 73, quantity: 5, customer_id: "#{customer.sample}" },
                { name: "Cake - Cheese Cake 9 Inch", price: 37, quantity: 22, customer_id: "#{customer.sample}" },
                { name: "Dill - Primerba, Paste", price: 81, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Chicken - Tenderloin", price: 46, quantity: 5, customer_id: "#{customer.sample}" }
]

        )
        
        puts "Product added successfully!"
    end
  end