module Bibliothecary
  class Configuration
    attr_accessor :ignored_files
    attr_accessor :carthage_parser_host
    attr_accessor :clojars_parser_host
    attr_accessor :mix_parser_host
    attr_accessor :gradle_parser_host
    attr_accessor :yarn_parser_host
    attr_accessor :swift_parser_host
    attr_accessor :cabal_parser_host

    def initialize
      @ignored_files = ['.git', 'node_modules', 'bower_components', 'spec/fixtures', 'vendor', 'dist']
      @carthage_parser_host = 'https://carthage.libraries.io'
      @clojars_parser_host  = 'https://clojars.libraries.io'
      @mix_parser_host      = 'https://mix.libraries.io'
      @gradle_parser_host   = 'https://gradle-parser.libraries.io'
      @yarn_parser_host     = 'https://yarn-parser.libraries.io'
      @swift_parser_host    = 'http://swift.libraries.io'
      @cabal_parser_host    = 'http://cabal.libraries.io'
    end
  end
end
