#!/usr/bin/ruby
load 'stock_observer.rb'
load 'test_observer.rb'
class Stock
  attr_reader :minimum_quantity_limit, :observers
  attr_accessor :available_quantity
  
  def initialize(available_quantity, minimum_quantity_limit)
    @available_quantity = available_quantity
    @minimum_quantity_limit = minimum_quantity_limit
    @observers = []
  end
  
  def update_available_quantity(available_quantity)
    @available_quantity = available_quantity
    notify_observer
  end
  
  def add_observers(*observer_instances)
  observer_instances.each{|observer_instance| observers << observer_instance}
  end
  private #used to declare private methods in ruby, any method(s) written below will be treated as private method(s).
  def notify_observer
   observers.each{|observer| observer.notify(self) }
  end
  
 	s=Stock.new 40,10
 	s.add_observers(StockObserver.new, TestObserver.new)
  puts s.inspect
  s.update_available_quantity(20)
  s.update_available_quantity(15)
  s.update_available_quantity(10)
  s.update_available_quantity(9)
  s.update_available_quantity(5)
end



