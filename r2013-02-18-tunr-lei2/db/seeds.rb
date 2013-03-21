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

a1 = Album.create(:name => 'Thriller', :image => 'http://mjlyricsonly.com/wp-content/uploads/2011/11/Thriller-Album-cover.jpg')
a2 = Album.create(:name => 'Nevermind', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/b/b7/NirvanaNevermindalbumcover.jpg/220px-NirvanaNevermindalbumcover.jpg')
a3 = Album.create(:name => 'The White Album', :image => 'http://2.bp.blogspot.com/_s61Pl6y2Fqc/S8-SAxyd04I/AAAAAAAAAE4/YtFxU_JSakU/s1600/1000px-the_white_albumsvg.png')

r1 = Artist.create(:name => 'Michael Jackson', :image => 'http://images2.fanpop.com/image/photos/10300000/MICHAEL-JACKSON-michael-jackson-10317030-1082-1263.jpg')
r2 = Artist.create(:name => 'Nirvana', :image => 'http://userserve-ak.last.fm/serve/252/3991355.jpg')
r3 = Artist.create(:name => 'Beatles', :image => 'http://media.thelineofbestfit.com/wp-content/media/2013/01/the-beatles.jpg')

u1 = User.create(:balance => 352.81, :name => 'Bob', :image => 'http://sigmaifa.co.uk/images/team-large/damon-george.jpg', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:balance => 250.21, :name => 'Alice', :image => 'http://stlpwa.org/images/site/home-slideshow/professional-woman-4.jpg', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:balance => 311.46, :name => 'Sue', :image => 'http://www.cdc.gov/ncbddd/pediatricgenetics/images/pediatric-genetics-woman.jpg', :password => 'a', :password_confirmation => 'a')
u4 = User.create(:balance => 989.98, :name => 'Admin', :image => 'http://openclipart.org/image/800px/svg_to_png/174534/administrator.png', :password => 'a', :password_confirmation => 'a')
u4.is_admin = true
u4.save

m1 = Mixtape.create(:name => 'Easy Listening')
m2 = Mixtape.create(:name => 'Workout Music')
m3 = Mixtape.create(:name => 'Old School')

r1.songs << s1 << s2
r2.songs = [s3]
a1.songs = [s1, s2]
a2.songs << s3
g3.songs = [s1, s2, s3]
u1.mixtapes = [m1, m2]
u3.mixtapes = [m3]
m3.songs = [s1, s2, s3]
u1.albums = [a1, a2]
