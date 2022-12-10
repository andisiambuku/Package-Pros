HealthCheck = Rack::Builder.new do
    use Rack::CommonLogger
    map '/' do
      run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ['OK']] }
    end
  end