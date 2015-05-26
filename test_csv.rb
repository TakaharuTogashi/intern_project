require 'csv'
valid_account = []
invalid_account = []

CSV.foreach(ARGV[0]) do |account, password|
	if account.length == 21 && /^[a-zA-Z0-9]/ =~ account && /\@backstore\.jp$/ =~ account && /(.)\1\1/ !~ account && password.length == 8 && /(.)\1\1/ !~ password && /[lIO10][^a-zA-Z0-9]/ !~ password then
		valid_account << account + "," + password
	else
		invalid_account	<< account + "," + password
	end
end

puts "仕様を満たすアカウント数　　　　#{valid_account.length}"
puts "仕様を満たさないアカウント数　　#{invalid_account.length}"
