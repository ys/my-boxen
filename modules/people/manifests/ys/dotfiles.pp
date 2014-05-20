class people::ys::dotfiles {
  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/.dotfiles"

  repository { $dotfiles_dir:
    source => "ys/dotfiles"
  }

  exec { "install dotfiles":
    cwd      => $dotfiles_dir,
    command  => "rake install",
    provider => shell,
    creates  => "${home}/.zshrc",
    require  => Repository[$dotfiles_dir]
  }
# Dotfiles
}
