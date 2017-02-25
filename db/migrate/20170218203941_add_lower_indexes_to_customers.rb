class AddLowerIndexesToCustomers < ActiveRecord::Migration[5.0]
  # varchar_pattern_ops is a Postgres functions that allows
  # to create indexes on modified attributes
  def up
      execute %{
        CREATE INDEX
        customers_lower_last_name
        ON
        customers (lower(last_name) varchar_pattern_ops)
      }
      execute %{
        CREATE INDEX
        customers_lower_first_name
        ON
        customers (lower(first_name) varchar_pattern_ops)
      }
      execute %{
        CREATE INDEX
        customers_lower_email
        ON
        customers (lower(email))
      }
  end
  def down
    remove_index :customers, name: 'customers_lower_last_name'
    remove_index :customers, name: 'customers_lower_first_name'
    remove_index :customers, name: 'customers_lower_email'
  end
end
