inum = ARGV[0].to_i

def create_users(inum)
	account_words = ((0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a)
	password_words = ((2..9).to_a + ("a".."k").to_a + ("m".."z").to_a + ("A".."H").to_a + ("J".."N").to_a + ("P".."Z").to_a)

	loop do
		users = []

		inum.times do
			account = account_words.sample(8).join + "@backstore.jp"
			password = password_words.sample(8).join
			user = {:account => account, :password => password}
			users << user
		end

		avoid_repetition = users.uniq
		if avoid_repetition == users
			return users
		end
	end
end

users = create_users(inum)

File.open('test_account.csv', 'w') do |fh|
	users.each do |user|
		fh.write(user[:account] + "," + user[:password] + "\n")
	end
end
