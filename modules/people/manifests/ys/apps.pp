class people::ys::apps {

  #all packages added to PuppetFile
  include alfred2
  include arq
  include autojump
  include chrome::beta
  include dropbox
  include fitbit
  include flux
  include github_for_mac
  include hipchat
  include slack
  include memcached
  include mou
  include mplayerx
  include onepassword
  include postgresapp
  include rdio
  include skype
  include transmission
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
