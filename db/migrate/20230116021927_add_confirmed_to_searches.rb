class AddConfirmedToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :confirmed, :boolean, default: false
  end
end
