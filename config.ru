use Rack::Static, 
  :urls => ["/lib","/vendor","/example"],
  :root => "."

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'max-age=86400' 
    },
    File.open('example/index.html', File::RDONLY)
  ]
}
