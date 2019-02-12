#!/usr/bin/env ruby
# project_id        = "Your Google Cloud project ID"
# bucket_name       = "Your Google Cloud Storage bucket name"
# local_file_path   = "Path to local file to upload"
# storage_file_path = "Path to store the file in Google Cloud Storage"

require "google/cloud/storage"

storage = Google::Cloud::Storage.new project_id: "clgx-ctt-sbx-7a02"
bucket  = storage.bucket "dewaynes-bucket"

file = bucket.create_file "./Monty_Python_Holy_Grail.jpg", "Monty_Python_Holy_Grail.jpg"

puts "Uploaded #{file.name}"
