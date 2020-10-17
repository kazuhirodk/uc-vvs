class SillyPascal
  def is_valid?(identifier)
    size = identifier.size

    return false if (size > 6 || size < 1)
    return false if (is_number?(identifier[0]))

    match_regex = identifier.match(/^[a-zA-Z][a-zA-Z0-9]{0,5}/)

    match_identifier = match_regex ? match_regex[0] : ''

    return false if (match_identifier.size != size)

    return true
  end

  private

  def is_number?(string)
    true if Float(string) rescue false
  end
end
