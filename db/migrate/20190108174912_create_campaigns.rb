# frozen_string_literal: true

class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name, null: false
      t.string :image
      t.integer :percent_raised, null: false
      t.integer :target_amount, null: false
      t.string :sector
      t.string :country
      t.integer :invest_multiple, null: false

      t.timestamps
    end
  end
end
