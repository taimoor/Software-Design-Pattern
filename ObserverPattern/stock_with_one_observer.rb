#!/usr/bin/ruby
load 'stock_observer.rb'
class Stock
  attr_reader :minimum_quantity_limit, :observer
  attr_accessor :available_quantity#, :observer
  
  def initialize(available_quantity, minimum_quantity_limit)
    @available_quantity = available_quantity
    @minimum_quantity_limit = minimum_quantity_limit
    @observer = StockObserver.new
  end
  
  def update_available_quantity(available_quantity)
    @available_quantity = available_quantity
    notify_observer
  end
  
  private #used to declare private methods in ruby, any method(s) written below will be treated as private method(s).
  def notify_observer
   @observer.notify(self)
  end
  
 	s=Stock.new 40,10
  puts s.inspect
  s.update_available_quantity(20)
  s.update_available_quantity(15)
  s.update_available_quantity(10)
  s.update_available_quantity(9)
  s.update_available_quantity(5)
end



