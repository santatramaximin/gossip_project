require_relative "gossip"
class View

attr_accessor :author_view, :content_view, :destroy
  def create_gossip
  	puts "Auteur: "
  	print "> "
  	@author_view = gets.chomp()
  	puts "Content: "
  	print "> "
  	@content_view = gets.chomp()
  	return params = { content: @content_view, author: @author_view }
  end
  def index_gossips
  	 Gossip.all
  end
 
end