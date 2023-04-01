class FiveThirtyEight

	# the directory with all the five thirty eight data direcotrie.
	attr_accessor :data_dir
	attr_accessor :api_key
	attr_accessor :base_url
	attr_accessor :client

	def initialize(opts={})
		self.client = ChartistanRubyApi::Base.new
		self.data_dir = opts.delete("data_dir")
		self.api_key = self.client.api_key = opts.delete("api_key")
		self.base_url = self.client.base_url = opts.delete("base_url")
	end

	def parse_all
		Dir.glob(self.data_dir + "/*").each do |x|
			if File.directory?(x)
				parse_single_directory(x)
			end
		end
	end

	def parse_single_directory(dir)

		puts "processing dataset #{dir}"

		dataset = {
			"blobs_attributes" => []
		}

		Dir.glob(dir + "/*.md").each do |readme_name|
			readme = IO.read(readme_name)
			dataset["name"] = readme.split(/\n/)[0].gsub(/#/,'')
			dataset["description"] = readme.split(/\n/)[1..-1].join("\n")
			dataset["license"] = "cc-by-4.0: Creative Commons Attribution 4.0 International"
		end

		Dir.glob(dir + "/*.csv").each do |csv|
			dataset["blobs_attributes"] << {
				"file" => File.open(csv)
			}
		end

	
	  	response = self.client.create_dataset({
			"Accept" => "application/json"
		},{"dataset" => dataset})

	  	puts "response code #{response.code.to_s}"

	end

end
