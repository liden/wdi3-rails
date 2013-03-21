User.delete_all
Task.delete_all
Priority.delete_all

u1 = User.create(:name => 'Bob', :email => 'bob@bob.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Sue', :email => 'sue@sue.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Jack', :email => 'jack@jack.com', :password => 'a', :password_confirmation => 'a')


p1 = Priority.create(:name => 'p900', :color => '#ff0000', :value => 900)
p2 = Priority.create(:name => 'p800', :color => '#00ff00', :value => 800)
p3 = Priority.create(:name => 'p700', :color => '#0000ff', :value => 700)
p4 = Priority.create(:name => 'p600', :color => '#ff33cc', :value => 600)
p5 = Priority.create(:name => 'p500', :color => '#ff90ff', :value => 500)

t1 = Task.create(:address => '10 E 21st Street, NY', :title => 'buy milk', :description => '1/2 gallon whole milk', :duedate => '2/3/2013')
t2 = Task.create(:address => 'Paris, France', :title => 'pay bills', :description => 'cable, coned', :duedate => '3/2/2013')
t3 = Task.create(:address => 'London, England', :title => 'mail package', :description => 'baby gift for zoe', :duedate => '9/5/2013', :is_complete => true)

t1.priority = p1
t1.save
t2.priority = p2
t2.save
t3.priority = p3
t3.save

u1.priorities << p1 << p2 << p3 << p4 << p5
u1.tasks << t1 << t2 << t3