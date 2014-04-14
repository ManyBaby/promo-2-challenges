def french_phone_number?(phone_number)
  # TODO: true or false?
  phone_number_clean = phone_number.delete('')
  phone_number_clean.delete!('-')
  if phone_number_clean =~ /(0|\+33)\s?([1-9])(\s?\d{2}){4}/
    return true
  else
    return false
  end
end
