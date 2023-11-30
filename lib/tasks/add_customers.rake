namespace :db do
    desc "Add customers"
    task add_customers: :environment do
        user = User.pluck(:id)

        Customer.create!(
            [
                { first_name: "Ara", last_name: "Mohamed", email: "amohamed2@sciencedaily.com", phone: "621-745-6225", address: "91280 Crownhardt Alley", user_id: "#{user.sample}" },
                { first_name: "Timothea", last_name: "Rizzillo", email: "trizzillo3@statcounter.com", phone: "883-441-6159", address: "11 Maple Wood Trail", user_id: "#{user.sample}" },
                { first_name: "Carce", last_name: "Denson", email: "cdenson4@oracle.com", phone: "617-279-1088", address: "03494 Hanover Place", user_id: "#{user.sample}" },
                { first_name: "Chickie", last_name: "Worge", email: "cworge5@sohu.com", phone: "937-289-8963", address: "93 Dwight Pass", user_id: "#{user.sample}" },
                { first_name: "Tadeo", last_name: "Brennand", email: "tbrennand6@state.tx.us", phone: "345-342-5686", address: "078 Kipling Trail", user_id: "#{user.sample}" },
                { first_name: "Dyanna", last_name: "Alliot", email: "dalliot7@marriott.com", phone: "195-718-6590", address: "79 Clemons Center", user_id: "#{user.sample}" },
                { first_name: "Evonne", last_name: "Lumbers", email: "elumbers8@ucsd.edu", phone: "647-409-8260", address: "77 Prentice Alley", user_id: "#{user.sample}" },
                { first_name: "Chicky", last_name: "Everingham", email: "ceveringham9@ucsd.edu", phone: "245-175-4419", address: "83796 Badeau Crossing", user_id: "#{user.sample}" },
                { first_name: "Napoleon", last_name: "Metherell", email: "nmetherella@google.co.uk", phone: "987-878-7272", address: "4822 Pepper Wood Avenue", user_id: "#{user.sample}" },
                { first_name: "Courtney", last_name: "Buyers", email: "cbuyersb@altervista.org", phone: "452-358-1708", address: "79 Red Cloud Way", user_id: "#{user.sample}" },
                { first_name: "Georgeanna", last_name: "Stollmeier", email: "gstollmeierc@biblegateway.com", phone: "751-993-8239", address: "581 Oakridge Center", user_id: "#{user.sample}" },
                { first_name: "Gweneth", last_name: "Dioniso", email: "gdionisod@ameblo.jp", phone: "550-279-1066", address: "18824 Dapin Circle", user_id: "#{user.sample}" },
                { first_name: "Dian", last_name: "Gillebert", email: "dgilleberte@cpanel.net", phone: "342-194-6422", address: "87065 Village Circle", user_id: "#{user.sample}" },
                { first_name: "Benedikt", last_name: "Matovic", email: "bmatovicf@google.pl", phone: "155-418-9404", address: "7 Lake View Point", user_id: "#{user.sample}" },
                { first_name: "Hermie", last_name: "Mesant", email: "hmesantg@biglobe.ne.jp", phone: "708-837-6103", address: "1988 3rd Pass", user_id: "#{user.sample}" },
                { first_name: "Zandra", last_name: "Fall", email: "zfallh@shareasale.com", phone: "402-383-5672", address: "2467 Tennyson Avenue", user_id: "#{user.sample}" },
                { first_name: "Elfreda", last_name: "Lukasik", email: "elukasiki@hud.gov", phone: "210-542-0888", address: "8036 Heath Center", user_id: "#{user.sample}" },
                { first_name: "Jenni", last_name: "Spirritt", email: "jspirrittj@51.la", phone: "375-225-2329", address: "56902 Tomscot Point", user_id: "#{user.sample}" }
              ]              
        )
        
        puts "Customers Added successfully!"
    end
  end