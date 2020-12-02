MAIL_REGEX = /([^@]+)@([^@]+)/
WAGON_REGEX = /([^@]+)@(lewagon.org)/
GMAIL_REGEX = /([^@]+)@(gmail.com)/
LIVE_REGEX = /([^@]+)@(live.com)/

def mail_joke(email)
  if !MAIL_REGEX.match(email)
    raise ArgumentError.new, 'not a valid entry'
  else
    return check_mail(email)
  end
end

def check_mail(email)
  if WAGON_REGEX.match(email)
    return "Well done #{name_format(WAGON_REGEX.match(email)[1])}, you're skilled and capable"
  elsif GMAIL_REGEX.match(email)
    return "#{name_format(GMAIL_REGEX.match(email)[1])}, you're an average but modern person"
  elsif LIVE_REGEX.match(email)
    return "#{name_format(LIVE_REGEX.match(email)[1])}, weren't you born after 1973?"
  else
    "Sorry #{name_format(MAIL_REGEX.match(email)[1])}, we don't know how to judge '#{MAIL_REGEX.match(email)[2]}'"
  end
end

def name_format(first_part)
  first_part.tr(".", " ")
  # first_part.tr(".", " ").capitalize
end

p mail_joke("boris@live.com")
