
    url = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>"
    poster_prefix = "https://image.tmdb.org/t/p/w500"
    data = URI.open(url).read
    result = JSON.parse(data)

    result["results"].each do |res|
    poster_path = res["poster_path"]
      Movie.create!(
        title: res["title"],
        overview: res["overview"],
        poster_url: "#{poster_prefix}#{poster_path}",
        rating: res["vote_average"].to_f)
    end
