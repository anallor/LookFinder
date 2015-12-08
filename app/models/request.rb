class Request < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :product, :message => "Este campo no puede estar vacío"
	validates_presence_of :place, :message => "Este campo no puede estar vacío"
	# validates_presence_of :name, :message => "Este campo no puede estar vacío"
	# validates_presence_of :email, :message => "Este campo no puede estar vacío"
end
