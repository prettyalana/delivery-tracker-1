class AddSupposedToArriveOnToDeliveries < ActiveRecord::Migration[7.0]
  def change
    add_column :deliveries, :supposed_to_arrive_on, :date
  end
end
