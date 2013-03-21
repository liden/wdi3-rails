User.delete_all
Stock.delete_all

u1 = User.create(:email => 'bob@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 100000)
u2 = User.create(:email => 'sue@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 50000)

s1 = Stock.create(:symbol => 'AAPL', :shares => 10, :purchase_price => 450.50)
s2 = Stock.create(:symbol => 'AAPL', :shares => 15, :purchase_price => 500.00)
s3 = Stock.create(:symbol => 'GOOG', :shares => 15, :purchase_price => 632.75)
s4 = Stock.create(:symbol => 'GOOG', :shares => 20, :purchase_price => 325.00)

u1.stocks << s1 << s3
u2.stocks << s2 << s4