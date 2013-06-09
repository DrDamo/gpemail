class Patient < ActiveRecord::Base
  attr_accessible :active, :allergies, :drugs, :email, :firstname, :mobile, :nhsno, :notes, :notifymethod, :patientid, :pmh, :signature, :surname, :title
end
