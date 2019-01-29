require_relative'model'
require_relative'view'
require'Json'

class Controller

attr_accessor :author, :content
attr_reader :my_csv

def initialize
	@view = view.new
end

def creation_potin
params = @view.create_gossip 
save_param = Gossip.new(params[:author], params[:content]).save
end

def affichage_potin
@viex.index_gossips

end


	def suppression_potin

params = @view.destroy.to_i
delete_param = Gossip.new("#{params}", "a").destroy
	end

end