class people::ys::nodes {
  include nodejs::v0_10_26
  class { 'nodejs::global': version => 'v0.10.26' }
}
