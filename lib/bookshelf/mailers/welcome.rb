class Mailers::Welcome
  include Hanami::Mailer

  from    'boti <boti@logicoptimum.com>'
  to      'Orban Botond <orbanbotond@gmail.com>'
  subject :welcome_subject

  def author
    book.author
  end

  def title
    book.title
  end

private

  def welcome_subject
    "Welcome #{ author } To Publish #{title}!"
  end
end
