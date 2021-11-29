#1 Доработать программу из проектирования:
#1. Написать новые презентеры (ReportPresenter) для:
#• вывода отчета в виде CSV,
#• вывода отчета в виде JSON
require 'json'
require 'csv'

class Discount
  def self.percent(timestamp)
    return 0.0 if timestamp.sunday?
    return 0.0 if timestamp.saturday?
     0.1
  end 
end

class Model
  attr_accessor :name, :wheel_count, :wheel_size
  
  def initialize(name, wheel_count, wheel_size)
    @name = name 
    @wheel_count = wheel_count
    @wheel_size = wheel_size
  end 
end
 

class Price
  attr_accessor :price, :wheel_size
  
  def initialize(wheel_size, price) 
    @price = price
    @wheel_size = wheel_size
  end 
end
 

class Order
   attr_accessor :model, :timestamp
   def initialize(model, timestamp)
     @model = model
     @timestamp = timestamp
end
   def cost_with_discount
     raise NotImplementedError
end end
 

class ModelLoader
  DATA = [
    Model.new('Газель', 6, 16),
    Model.new('Жигули', 4, 13),
    Model.new('Феррари', 4, 18),
    Model.new('Ламборджини', 4, 17),
    Model.new('Камаз', 10, 21),
]
  def self.find_by_name(name)
    DATA.find { |model| model.name == name }
  end 
end
 

class PriceLoader
  DATA = [
    Price.new(13, 90.00),
    Price.new(16, 100.00),
    Price.new(17, 110.00),
    Price.new(18, 120.00),
    Price.new(21, 210.00),
]
  def self.find_by_wheel_size(wheel_size)
    DATA.find { |price| price.wheel_size == wheel_size }
  end 
end
 

class OrderLoader
   DATA = [
     Order.new(ModelLoader.find_by_name('Газель'),
               Time.new(2021,9,20,12,33)),
     Order.new(ModelLoader.find_by_name('Феррари'),
               Time.new(2021,9,21,15,20)),
     Order.new(ModelLoader.find_by_name('Жигули'),
               Time.new(2021,9,21,17,41)),
     Order.new(ModelLoader.find_by_name('Ламборджини'),
               Time.new(2021,9,22,18,52)),
     Order.new(ModelLoader.find_by_name('Камаз'),
               Time.new(2021,9,22,11,23)),
     Order.new(ModelLoader.find_by_name('Газель'),
               Time.new(2021,9,22,10,14)),
     Order.new(ModelLoader.find_by_name('Камаз'),
               Time.new(2021,9,23,11,55))
]
end

class OrderLoader
  def self.find_by_period(_period)
    DATA
  end
end

class Order
  def cost_with_discount
    cost - discount
  end

  private

  def cost
    model.wheel_count * price
  end

  def price
   PriceLoader.find_by_wheel_size(model.wheel_size).price
  end

  def discount
    cost * Discount.percent(timestamp)
  end
end

class Report
  def self.calculate(period = nil)
    result = {}
    orders = OrderLoader.find_by_period(period)
    orders.each do |order|
      date = order.timestamp.strftime('%F')
      result[date] ||= 0.0
      result[date] += order.cost_with_discount
    end
    result.map { |d, i| { date: d, income: i } }
      .sort_by { |line| line[:income] }
      .last(3)
      .reverse
  end
end

class ReportPresenter
  def self.print(report)
    puts "Date, Income"
    report.each do |line|
      puts "#{ line[:date] }, #{ line[:income] }"
    end
  end
end


#to json
class JsonReportPresenter
  def self.print(report)
    { json: report }.to_json
  end
end

#to csv
class CsvReportPresenter
  def self.print(report)
    csv = CSV.generate do |csv|
    csv << [report]
    end
  end
end


puts 'MAIN:', ReportPresenter.print(Report.calculate)
puts 'JSON:', JsonReportPresenter.print(Report.calculate)
puts 'CSV:', CsvReportPresenter.print(Report.calculate)
puts "______________________________"


















