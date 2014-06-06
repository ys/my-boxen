class people::ys::rubies {
  class { 'ruby::global':
    version => '2.1.2'
  }

  ruby::version { '2.1.1': }
  ruby::version { '2.0.0-p451': }
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.6.2',
    ruby_version => '*',
  }
}
