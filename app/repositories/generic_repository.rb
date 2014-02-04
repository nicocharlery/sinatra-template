module GenericRepository
  extend self

  def take_good_care_of symbol
    @symbol = symbol
  end

  def create hash
    res = nil
    session.with(safe: true) do |safe|
      hash.merge!({created_at: Time.now})
      res = safe[@symbol].insert(hash)
    end
    res['err'].nil?
  end

  def all
    result = []
    session[@symbol.to_s].find.each do |obj_h|
      clazz = @symbol.to_s.singularize.camelize.constantize
      object = clazz.new(obj_h.to_hash.symbolize_keys)
      result << object
    end
    result
  end
end
