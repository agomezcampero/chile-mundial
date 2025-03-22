module SocialMediaHelper
  def add_utm_source(url, source)
    uri = URI.parse(url)
    query = URI.decode_www_form(uri.query || "") << ["utm_source", source]
    uri.query = URI.encode_www_form(query)
    uri.to_s
  end
end
