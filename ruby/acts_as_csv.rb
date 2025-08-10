module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end
 
  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
 
  module InstanceMethods
    attr_accessor :headers, :csv_contents
    def initialize
      read   
    end

    def read 
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
 
      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    def each (&block)
      @csv_contents.each do |line|
        yield CsvRow.new(self, line)
      end
    end
  end
end
 
class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

class CsvRow
  def initialize(csv, row_data)
    @csv = csv
    @row_data = row_data
  end

  def method_missing name, *args
    col_name = name.to_s

    col_index = @csv.headers.find_index(col_name)

    if(col_index.nil?)
      return nil
    end

    return @row_data[col_index]
  end
end
 
m = RubyCsv.new
# puts m.headers.inspect
# puts m.csv_contents.inspect
m.each { |row| puts row.favorite_color }
