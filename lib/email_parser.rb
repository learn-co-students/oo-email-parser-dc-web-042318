class EmailParser
  attr_accessor :emails
  attr_writer :parse

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed = emails.tr(' ', ',').split(',').uniq
    parsed.reject { |e| e == '' }
  end
end
