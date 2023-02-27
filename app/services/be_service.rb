class BeService
  def self.quiz_results(min_weight, max_weight, shedding, barking, energy, protectiveness, trainability)
    r = conn.get("/quiz_results") do |f|
      f.params["min_weight"] = min_weight
      f.params["max_weight"] = max_weight
      f.params["shedding"] = shedding
      f.params["barking"] = barking
      f.params["energy"] = energy
      f.params["protectiveness"] = protectiveness
      f.params["trainability"] = trainability
    end
    r = JSON.parse(r.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://127.0.0.1:8000")
  end
end