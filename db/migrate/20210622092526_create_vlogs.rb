class CreateVlogs < ActiveRecord::Migration
  def change
    create_table :vlogs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
