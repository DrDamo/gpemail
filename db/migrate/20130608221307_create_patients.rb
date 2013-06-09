class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :title
      t.string :firstname
      t.string :surname
      t.string :patientid
      t.string :nhsno
      t.boolean :active
      t.text :signature
      t.string :email
      t.string :mobile
      t.string :notifymethod
      t.text :pmh
      t.text :drugs
      t.text :allergies
      t.text :notes

      t.timestamps
    end
  end
end
