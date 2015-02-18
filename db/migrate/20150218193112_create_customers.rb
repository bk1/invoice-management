class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :code
      t.string :short_name
      t.string :long_name
      t.string :country
      t.string :region
      t.string :city
      t.string :street

      t.timestamps null: false
    end
  end
end
