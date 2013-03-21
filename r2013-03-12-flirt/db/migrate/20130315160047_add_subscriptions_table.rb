class AddSubscriptionsTable < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :plan
      t.decimal :cost
      t.integer :duration
      t.integer :num_photos
      t.integer :num_emails
      t.integer :num_texts
      t.boolean :is_alist, :default => false
      t.timestamps
    end
  end
end
