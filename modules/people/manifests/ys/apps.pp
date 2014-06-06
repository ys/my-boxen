class people::ys::apps {

  #all packages added to PuppetFile
  include alfred
  include autojump
  include chrome::beta
  include dropbox
  include fitbit
  include flux
  /* include github_for_mac */
  package { 'GitHub':
    source   => 'https://github-central.s3.amazonaws.com/mac/GitHub%20for%20Mac%20180.zip',
    provider => 'compressed_app'
  }
  include iterm2::dev
  include hipchat
  include slack
  include memcached
  include mou
  /* include onepassword */
  package { '1Password 4':
    source   => 'https://d13itkw33a7sus.cloudfront.net/dist/1P/mac4/1Password-4.4.1.zip',
    provider => compressed_app
  }
  /* include postgresapp */
  package { 'Postgres':
    source   => 'https://github.com/PostgresApp/PostgresApp/releases/download/9.3.4.1/Postgres-9.3.4.1.zip',
    provider => compressed_app
  }
  include rdio
  include skype
  include vlc
  include wget
  include xquartz
  include zsh

  # heroku client
  $hkurl = 'https://hkdist.s3.amazonaws.com/hk/20140514/darwin-amd64.gz'
  $hkdest = "${boxen::config::bindir}/hk"
 
  exec { 'download hk binary':
    command => "/usr/bin/curl '${hkurl}' | zcat > '${hkdest}'",
    creates => $hkdest,
    require => File[$boxen::config::bindir],
  }
 
  file { $hkdest:
    mode    => '0750',
    require => Exec['download hk binary'],
  }

  package { 'All the GIFs':
    ensure   => installed,
    source   => 'https://raw.github.com/orta/GIFs/master/web/GIFs.app.zip',
    provider => compressed_app
  }

}
