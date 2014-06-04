class people::ys::homebrew {
  # Homebrew packages
  homebrew::tap { 'homebrew/binary': }
  homebrew::tap { 'phinze/cask': }

  package {
    [
      'ctags',
      'gist',
      'jq',
      'mercurial',
      'readline',
      'the_silver_searcher',
      'vim',
    ]:
  }
}
