# frozen_string_literal: true

class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :image
      t.integer :percent_raised
      t.integer :target_amount
      t.string :sector
      t.string :country
      t.integer :invest_multiple

      t.timestamps
    end
  end
end
