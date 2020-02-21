class CreateUsers < ActiveRecord::Migration[5.1]
  def new
    @user=User.new
  end
    def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end