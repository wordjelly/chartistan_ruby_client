require "byebug"
require "nokogiri"
require "typhoeus"
require "active_support/all"

class ChartistanRubyApi::Base

	attr_accessor :base_url

	attr_accessor :api_key

	def initialize(opts={})	
		self.base_url = (opts.delete("base_url") || "https://www.chartistan.com/")
		self.api_key = opts.delete("api_key")

	end

	## Example CREATE DATASET API CALL
=begin
	client = ChartistanRubyApi::Base.new({"api_key" => "test"})
	client.create_dataset({
		"Accept" => "application/json"
	},{
		"dataset" => {
			"name" => "test_dataset",
			"description" => "first dataset",
			"blobs_attributes" => [
				{
					"file" => File.open("test.csv")
				}
			]
		}
	})
=end
	def create_dataset(headers={"Accept" => "application/json"},body={"dataset" => {}})
		response = Typhoeus.post(self.base_url + "datasets.json?auth_token=#{self.api_key}",headers: headers,body: body)
		return response
	end

	def get_dataset(id)

	end

	def update_dataset(id,body)

	end

	def delete_dataset(id)

	end

end