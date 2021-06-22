# frozen_string_literal: true

class CreateVlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :vlogs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
