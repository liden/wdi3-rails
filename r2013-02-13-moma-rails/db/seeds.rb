Artist.delete_all
Painting.delete_all

Artist.create(:name => 'Joan Miro', :nationality => 'Spanish', :dob => '1893/04/20', :period => '20th century', :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5c/Portrait_of_Joan_Miro%2C_Barcelona_1935_June_13.jpg')
Artist.create(:name => 'Marcel Duchamp', :nationality => 'French', :dob => '1887/07/28/', :period => '20th century', :image => 'http://upload.wikimedia.org/wikipedia/en/9/95/Marcel_Duchamp_playing_chess_%28photo_by_Kay_Bell_Reynal%2C_1952%29.jpg')
Artist.create(:name => 'Laszlo Moholy-Nagy', :nationality => 'Hungarian', :dob => '1895/07/20', :period => '20th century', :image => 'http://www.nndb.com/people/301/000113959/laszlo-moholy-nagy.jpg')
Artist.create(:name => 'Paul Klee', :nationality => 'Swiss', :dob => '1879/12/18', :period => '20th century', :image => 'http://upload.wikimedia.org/wikipedia/commons/6/6e/Paul_Klee_1911.jpg')
Artist.create(:name => 'Josef Albers', :nationality => 'German', :dob => '1888/3/19', :period => 'early 20th century', :image => 'http://upload.wikimedia.org/wikipedia/en/9/9e/Josef_Albers.jpg')


Painting.create(:title => 'The Flight of the Dragonfly in Front of the Sun', :year => '1968', :medium => 'oil on canvas', :style => 'Abstract Art', :image => 'http://uploads0.wikipaintings.org/images/joan-miro/the-flight-of-the-dragonfly-in-front-of-the-sun.jpg')
Painting.create(:title => 'Nude Descending a Staircase, No. 2', :year => '1912', :medium => 'oil on canvas', :style => 'Abstract Art', :image => 'http://upload.wikimedia.org/wikipedia/en/c/c0/Duchamp_-_Nude_Descending_a_Staircase.jpg')
Painting.create(:title => 'A II', :year => '1924', :medium => 'oil on canvas', :style => 'Abstract Art', :image => 'http://emuseum2.guggenheim.org/media/full/43.900_ph_web.jpg')
Painting.create(:title => 'Senecio', :year => '1922', :medium => 'oil on canvas', :style => 'Abstract Art', :image => 'http://www.paulklee.net/images/paintings/Senecio-1922.jpg')
Painting.create(:title => 'Homage to the Square: Soft Spoken', :year => '1969', :medium => 'oil on masonite', :style => 'Abstract Art', :image => 'hhttp://www.metmuseum.org/toah/images/h2/h2_1972.40.7.jpg')