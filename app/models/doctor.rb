class Doctor < ActiveRecord::Base
  attr_accessible :active, :email, :firstname, :gmcno, :mobile, :notes, :notifymethod, :outoffice, :quals, :signature, :surname, :title

  validates :firstname, :presence => true
end
