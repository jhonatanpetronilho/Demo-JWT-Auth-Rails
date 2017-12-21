class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :email, unique: true
      t.string :password_digest, blank: false
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
