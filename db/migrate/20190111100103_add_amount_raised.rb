# frozen_string_literal: true

class AddAmountRaised < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :amount_raised, :integer
  end
end
