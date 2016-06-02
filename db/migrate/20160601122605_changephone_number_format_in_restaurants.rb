class ChangephoneNumberFormatInRestaurants < ActiveRecord::Migration
  def change
    change_column :restaurants, :phone_number, :integer
  end
end
