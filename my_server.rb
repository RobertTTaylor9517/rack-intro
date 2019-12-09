class MyServer
    def call(env)
        return [200, {'Content_Type' => 'text/html'}, pretty_response]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello, World</em>"] : ["<strong>Hello, my name is</strong>"]
    end

end