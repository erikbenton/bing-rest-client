require 'rest-client'

def get_search()
	puts "What would you like to seach for?"
	search = gets.chomp.split(" ").join("+")
	return search
end

def make_url(search)

	url = "https://www.bing.com/search?q=#{search}"
	return url
end

def get_response(url)
	response = RestClient.get url
	return response
end

def response_analyzer(response)

	puts ""
	puts response.code
	puts ""
	puts response.headers
	puts ""
	puts response.cookies
	puts ""

end

puts "Type 'exit' to quit"
query = get_search

while query != "exit"
	response_analyzer(get_response(make_url(query)))
	query = get_search

end