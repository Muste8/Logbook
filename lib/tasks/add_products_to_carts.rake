namespace :db do
    desc "Add products to customer carts"
    task add_products_to_carts: :environment do
        customer = Customer.pluck(:id)

        Product.create!(
            [
                { name: "Mix - Cocktail Ice Cream", price: 27, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Sprite, Diet - 355ml", price: 43, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Soup Campbells - Tomato Bisque", price: 75, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Milk - 2% 250 Ml", price: 34, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Juice - Ocean Spray Kiwi", price: 27, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Sauce - Cranberry", price: 95, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Cucumber - English", price: 67, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Mushroom - Enoki, Dry", price: 12, quantity: 5, customer_id: "#{customer.sample}" },
                { name: "Flour - Chickpea", price: 17, quantity: 5, customer_id: "#{customer.sample}" },
                { name: "Gin - Gilbeys London, Dry", price: 79, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Wine - Placido Pinot Grigo", price: 44, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Sole - Dover, Whole, Fresh", price: 74, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Beef - Tongue, Fresh", price: 39, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Table Cloth 62x114 Colour", price: 45, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Cut Wakame - Hanawakaba", price: 86, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Flour - Fast / Rapid", price: 86, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Mushroom - Shitake, Fresh", price: 74, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Vodka - Moskovskaya", price: 31, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Coffee Caramel Biscotti", price: 67, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Bar Mix - Lime", price: 59, quantity: 11, customer_id: "#{customer.sample}" },
                { name: "Oven Mitts 17 Inch", price: 51, quantity: 5, customer_id: "#{customer.sample}" },
                { name: "Oil - Peanut", price: 89, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Cookie Double Choco", price: 76, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Pasta - Bauletti, Chicken White", price: 3, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Bag - Regular Kraft 20 Lb", price: 100, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Veal - Kidney", price: 89, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Syrup - Monin - Passion Fruit", price: 73, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Cake - Cheese Cake 9 Inch", price: 37, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Dill - Primerba, Paste", price: 81, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Chicken - Tenderloin", price: 46, quantity: 5, customer_id: "#{customer.sample}" },
                { name: "Ice Cream - Vanilla", price: 5, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Cola - Classic, 355ml", price: 22, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Tomato Soup - Organic", price: 30, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Milk - Whole, 1 Gallon", price: 12, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Orange Juice - Fresh Squeezed", price: 15, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "BBQ Sauce - Hickory Smoked", price: 8, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Cucumbers - Persian", price: 18, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Shiitake Mushrooms - Fresh", price: 14, quantity: 5, customer_id: "#{customer.sample}" },
                { name: "Quinoa Flour - Organic", price: 20, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Rum - Dark, Aged 10 Years", price: 50, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Chardonnay - Oak Barrel Aged", price: 35, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Salmon - Fresh Fillet", price: 28, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Beef - Sirloin Steak", price: 40, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Table Cloth - Elegant White", price: 25, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Nori Seaweed - Premium Grade", price: 15, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Bread Flour - Artisanal Blend", price: 18, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Portobello Mushrooms - Large", price: 22, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Tequila - Reposado", price: 30, quantity: 1, customer_id: "#{customer.sample}" },
                { name: "Espresso Beans - Dark Roast", price: 25, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Margarita Mix - Premium", price: 30, quantity: 8, customer_id: "#{customer.sample}" },
                { name: "Oven Mitts - Heat Resistant", price: 15, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Sesame Oil - Toasted", price: 12, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Chocolate Chip Cookies", price: 18, quantity: 5, customer_id: "#{customer.sample}" },
                { name: "Penne Pasta - Whole Wheat", price: 8, quantity: 3, customer_id: "#{customer.sample}" },
                { name: "Paper Bags - Kraft, Pack of 50", price: 10, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Lamb - Rack, Frenched", price: 45, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Maple Syrup - Pure Grade A", price: 28, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Cheesecake - New York Style", price: 30, quantity: 2, customer_id: "#{customer.sample}" },
                { name: "Basil Pesto - Freshly Made", price: 22, quantity: 4, customer_id: "#{customer.sample}" },
                { name: "Chicken Wings - Buffalo Style", price: 15, quantity: 6, customer_id: "#{customer.sample}" }
            ]

        )
        
        puts "Product added successfully!"
    end
  end