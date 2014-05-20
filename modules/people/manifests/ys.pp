class people::ys {

  include people::ys::osx
  include people::ys::apps
  include people::ys::rubies
  include people::ys::nodes
  include people::ys::dotfiles
  include people::ys::homebrew

  include projects::all
}
