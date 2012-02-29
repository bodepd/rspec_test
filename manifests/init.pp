class rspec_test($message = 'default') {
  notify { $message: }
  if $::some_fact == 'value' {
    file { '/tmp/some_file': content => 'some contents' }
  }
}
