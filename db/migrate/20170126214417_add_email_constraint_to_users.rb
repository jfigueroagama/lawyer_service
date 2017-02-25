class AddEmailConstraintToUsers < ActiveRecord::Migration[5.0]
  # CHECK  (email ~* '^[^@]+@example\\.com')
  # CHECK (email ~* '^([\\w+\\-]\\.?)+@[a-z\\d\\-]+(\\.[a-z]+)*\\.[a-z]+$')
  def up
    execute %{
      ALTER TABLE users
      ADD CONSTRAINT email_must_be_correct
      CHECK ( email ~* '^([\\w+\\-]\\.?)+@[a-z\\d\\-]+(\\.[a-z]+)*\\.[a-z]+$' )
    }
  end

  def down
    execute %{
      ALTER TABLE
      users
      DROP CONSTRAINT
      email_must_be_correct
    }
  end
end
