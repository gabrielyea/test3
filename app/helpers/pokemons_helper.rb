module PokemonsHelper
  def get_poke_info(response)
    result = []
    data = JSON.parse(response.body)
    result << data
    result.map do |entry|
      {
        name: entry['name'],
        picture: entry.dig('sprites', 'front_default')
      }
    end
  end
end
