$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'pry'

require 'codecreep/init_db'
require 'codecreep/github'
require "codecreep/version"
require 'codecreep/users'


module Codecreep

  base_uri 'https://api.github.com'
  basic_auth ENV['GH_USER'], ENV['GH_PASS']

  class App
    def initialize
      @github = Github.new
    end
  end

  class CoderCreep

    def following
      self.class.get(users/["thezerobit", "eudoxia0", "thepeopleseason", 
        "adriennefriend", "agumonkey", "WebEpic", "masondesu", "chefyangzhao", 
        "longlene", "hanziwang"].to_json/following)
    end

    def followers
      self.class.get(users/["thezerobit", "eudoxia0", "thepeopleseason", 
        "adriennefriend", "agumonkey", "WebEpic", "masondesu", "chefyangzhao", 
        "longlene", "hanziwang"].to_json/followers)
    end

    def user
      params = {
        name: name,
        follower_count: follower_count,
        friend_count: friend_count,
        repo_count: repo_count,
        company: company,
        homepage: homepage,
      }
    end

  end

end

# app = Codecreep::App.new
# binding.pry


