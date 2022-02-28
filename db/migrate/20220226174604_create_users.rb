class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false # null:false demekle eğer e-posta adresi yoksa veritabanına eklemesine izin verilmeyeceğini söylemiş oluruz
      t.string :password_digest

      t.timestamps
    end
  end
end
