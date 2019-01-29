require "csv"
require "pp"

class Gossip

	attr_accessor :author, :content, :a
@@all = ""

def initialize(author, content)
  @content = content
  @author = author

end

def save
	@myhash = Hash.new
	@myhash[@author] = @content
		CSV.open("../db/gossip.csv","a") do |csv|
			@myhash.to_a.each {|elem| csv << elem}
		end
	end

		def destroy(num)
		var = CSV.open("../db/gossip.csv","r")
		#table = CSV.table("../db/gossip.csv")
		@a = var.to_a
		@a[num] = nil
		@a = @a.compact
		#puts "#{@a}"
	
		end

		def applique
			CSV.open("../db/gossip.csv","w") do |csv|
		
				for i in @a
				csv << i
				end
			end


		end


	def self.all
      @my_csv = CSV.read("../db/gossip.csv","r")
  	  puts "test #{@my_csv.inspect}"
	end
end


author = "max"
content = "contenu"

=begin
go= Gossip.new(author, content)
go.destroy(3)
go.applique


go= Gossip.new(author, content)
Gossip.all
=end