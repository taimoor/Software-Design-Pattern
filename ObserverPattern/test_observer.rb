  class TestObserver
		def notify(stock)
			if stock.available_quantity <= stock.minimum_quantity_limit
			  puts "In test observereeeeee"
				#Code to send email to purchase dept
			else
			  puts "In test"
			end
		end
 	end

