class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.string :patient
      t.string :firstdoc
      t.string :seconddoc
      t.string :status

      t.timestamps
    end
  end
end
