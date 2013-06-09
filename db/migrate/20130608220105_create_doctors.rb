class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :title
      t.string :firstname
      t.string :surname
      t.string :quals
      t.string :gmcno
      t.boolean :active
      t.boolean :outoffice
      t.text :signature
      t.string :email
      t.string :mobile
      t.string :notifymethod
      t.text :notes

      t.timestamps
    end
  end
end
