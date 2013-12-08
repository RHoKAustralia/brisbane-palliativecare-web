class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :name
      t.date :date_of_birth
      t.attachment :photo

      t.timestamps
    end
  end
end
