# motd class
class motd {
    case $environment {
        production: {
          $motd_content    = 'I am a production environment!'
        }
        development: {
          $motd_content    = 'I am a development environment!'
        }
        default: {
          $motd_content    = 'I don\'t know which environment I am!'
        }
    }
    file{'/etc/motd':
      ensure  => present,
      content => "$motd_content\n",
    }
}
