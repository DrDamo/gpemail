class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :summary
      t.text :content
      t.string :priority
      t.text :privatenote

      t.timestamps
    end
  end
end
