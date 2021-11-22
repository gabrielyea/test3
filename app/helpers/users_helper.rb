module UsersHelper
  def get_useful_info(response)
    data = JSON.parse(response.body)['results'] # Acuerdate de checar el json! algunos tienen 'data' o nada
    data.map do |entry|
      {
        name: entry.dig('name', 'first'),
        picture: entry.dig('picture', 'medium')
      }
    end
  end
end
