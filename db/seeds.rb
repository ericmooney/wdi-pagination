fake_content = [
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit mi magna, eget feugiat risus ultricies vel. Quisque imperdiet convallis libero, a laoreet sem varius ultricies. Vestibulum vitae lacinia elit. Curabitur ac congue enim, vel consequat nibh. Nunc adipiscing at neque vitae feugiat. Mauris sagittis ipsum vel diam cursus porta. Praesent eget condimentum nibh, vitae porta enim. Nullam molestie sem et dui iaculis cursus. Aenean ullamcorper mi at sem adipiscing, sed scelerisque dui vulputate. Etiam iaculis laoreet nisl vitae placerat. Suspendisse turpis lorem, tincidunt nec faucibus sed, facilisis at turpis. Quisque vulputate mauris urna, ac viverra justo condimentum eu. Vivamus vulputate accumsan felis, vel vestibulum ligula accumsan sit amet. Fusce dignissim volutpat nibh, in interdum ante bibendum cursus. Pellentesque blandit ac leo eget cursus.",
  "In egestas ipsum nec dolor mattis, in dignissim arcu accumsan. Aenean imperdiet neque elit, eget dapibus lectus placerat sit amet. Integer non commodo ipsum. Morbi et augue a metus ornare ultrices quis ullamcorper ligula. Fusce velit erat, egestas non justo sed, sagittis gravida lacus. Ut sagittis mi in tristique dictum. Pellentesque dolor dui, dapibus non bibendum non, dictum eu lectus. Maecenas ut dictum mi. Phasellus non leo ac turpis adipiscing tempus. Etiam in risus vel nisl tristique luctus. Donec tristique vehicula dapibus. Nullam blandit urna eget rutrum pharetra. Nunc enim enim, suscipit in elementum dictum, placerat id magna. Nunc tempus vulputate augue ac aliquet. Suspendisse dictum euismod elit, vitae bibendum dui viverra vel. Sed pellentesque tempor quam in ornare.",
  "Donec non purus blandit nunc tincidunt iaculis id a neque. Donec vel consequat nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam gravida erat et egestas fringilla. Nunc eget sagittis orci. Sed rhoncus mauris et pellentesque rhoncus. Nunc accumsan dui magna, in elementum ligula condimentum vitae. Sed bibendum vel lacus nec consequat. Phasellus posuere tellus lectus, sed rutrum ipsum ultrices quis.",
  "Nullam blandit ipsum nec cursus consequat. Etiam leo metus, dictum varius felis sit amet, interdum ornare felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas vitae leo nunc. Duis consequat nec tellus nec accumsan. Praesent vestibulum varius facilisis. Ut eros magna, convallis sit amet ipsum in, mollis laoreet tellus. In semper aliquam turpis, sit amet tincidunt ligula tristique vitae. Etiam vitae orci nunc. Aenean mollis, massa ut fringilla cursus, lorem sem pretium metus, non suscipit dolor libero ut enim. Vivamus consectetur elementum nulla ut tincidunt. Maecenas gravida egestas erat vel auctor. In scelerisque aliquet metus eu dapibus. Fusce leo odio, convallis eu eros eu, sollicitudin pretium ante. Nam dignissim diam ac vestibulum lobortis. Nam non luctus ante.",
  "Morbi congue tempus velit sodales tincidunt. Aenean ullamcorper dignissim justo, ut sagittis lacus dictum eget. Donec ac hendrerit massa. Proin dignissim tristique vestibulum. Maecenas viverra tortor id vehicula accumsan. Quisque gravida, lectus non ultricies convallis, nisl sem cursus nunc, in iaculis lacus felis at arcu. Fusce convallis ligula sem, non dignissim ipsum pulvinar eget. Praesent faucibus vehicula tortor. Quisque lacus risus, malesuada sed turpis et, pretium bibendum magna. Suspendisse ac accumsan ante, et tempus dui."
]

fake_titles = [
  ["Abraham Lincoln", "George Washington", "Thomas Jefferson", "John Adams", "James Madison", "James Monroe", "John Quincy Adams", "Andrew Jackson"],
  ["Becky Hammon", "Kym Hampton", "Chamique Holdsclaw", "Charde Houston", "Lauren Jackson", "Shannon Johnson", "Vickie Johnson", "Asjha Jones", "Merlakia Jones", "Crystal Langhorne", "Kara Lawson", "Betty Lennox", "Lisa Leslie"]
]

100.times do
  random_president = fake_titles[0].sample
  random_wnba_player = fake_titles[1].sample

  random_title = "#{random_president} and #{random_wnba_player}"
  random_content = fake_content.sample

  article = Article.create(title: random_title, body: random_content)
  puts "Created Article: '#{article.title}'"
end

puts "\nDone! #{Article.count} articles created."