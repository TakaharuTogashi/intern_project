inum = ARGV[0].to_i

account_words = ((0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a)
password_words = ((2..9).to_a + ("a".."k").to_a + ("m".."z").to_a + ("A".."H").to_a + ("J".."N").to_a + ("P".."Z").to_a)
users = []

inum.times{
	account = account_words.sample(8).join + "@backstore.jp"
	password = password_words.sample(8).join
	user = {:account => account, :password => password}
	users << user
}

File.open('test_account.csv', 'w') do |fh|
	users.each do |user|
		fh.write(user[:account] + "," + user[:password] + "\n")
	end
end