Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Mixtape.delete_all

g1 = Genre.create(:name => 'Classical')
g2 = Genre.create(:name => 'Rock')
g3 = Genre.create(:name => 'Top 40')

s1 = Song.create(:name => 'Thriller')
s2 = Song.create(:name => 'Billie Jean')
s3 = Song.create(:name => 'Smells Like Teen Spirit')

a1 = Album.create(:name => 'Thriller')
a2 = Album.create(:name => 'Nevermind')
a3 = Album.create(:name => 'The White Album')

r1 = Artist.create(:name => 'Michael Jackson')
r2 = Artist.create(:name => 'Nirvana')
r3 = Artist.create(:name => 'Beatles')

u1 = User.create(:name => 'Bob', :image => 'http://static.tvtropes.org/pmwiki/pub/images/Bob-Marley20_8326.jpg', :password => 'a', :password_confirmation => 'a', :balance => 500)
u2 = User.create(:name => 'Sam', :image => 'http://www-deadline-com.vimg.net/wp-content/uploads/2010/09/sam_worthington.jpg', :password => 'a', :password_confirmation => 'a', :balance => 250)
u3 = User.create(:name => 'Jill', :image => 'http://www.whitehouse.gov/sites/default/files/administration-official/ao_image/jillbiden_portrait_full.jpg', :password => 'a', :password_confirmation => 'a', :balance => 100)
u4 = User.create(:name => 'admin', :image => 'http://socialmediababe.com/wp-content/uploads/2010/12/administrator.jpg', :password => 'a', :password_confirmation => 'a')

u4.is_admin = true
u4.save

m1 = Mixtape.create(:name => 'Easy Listening')
m2 = Mixtape.create(:name => 'Workout Music')
m3 = Mixtape.create(:name => 'Old School')

r1.songs << s1 << s2
r1.save

r2.songs = [s3]
r2.save

a1.songs = [s1, s2]
a1.save

a2.songs << s3
a2.save

g3.songs = [s1, s2, s3]
g3.save

u1.mixtapes = [m1, m2]
u1.save

u3.mixtapes = [m3]
u3.save

m3.songs = [s1, s2, s3]
m3.save

u1.albums = [a1, a2]
u1.save