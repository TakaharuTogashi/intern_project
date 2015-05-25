require 'csv'

CSV.foreach(ARGV[0]) do |account, password|
	if account.length == 21 && /@backstore.jp/ =~ account && password.length == 8 &&/[lIO10]/ !~ password
		puts 1
	else
		puts '0   ' + account + password
	end

end
