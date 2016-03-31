  class StockObserver
		def notify(stock)
			if stock.available_quantity <= stock.minimum_quantity_limit
			  puts "Stock reached minimal limit!  Minimum Quantity Limit: #{stock.minimum_quantity_limit}   Available Quantity: #{stock.available_quantity}"
				#Code to send email to purchase dept
			else
			  puts "Available Quantity: #{stock.available_quantity}"
			end
		end
 	end

