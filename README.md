### Simple JSON Parser with Elixir

This is a quick test at fetching and parsing a JSON response in Elixir.

```
JsonFetcher.get_url "https://api.github.com/users/bsodmike"
{:ok,
 %{"avatar_url" => "https://avatars.githubusercontent.com/u/368260?v=3",
   "bio" => nil, "blog" => "http://mwdesilva.com", "company" => "Inertialbox",
   "created_at" => "2010-08-18T09:46:11Z", "email" => "michael@mwdesilva.com",
   "events_url" => "https://api.github.com/users/bsodmike/events{/privacy}",
   "followers" => 19,
   "followers_url" => "https://api.github.com/users/bsodmike/followers",
   "following" => 78,
   "following_url" => "https://api.github.com/users/bsodmike/following{/other_user}",
   "gists_url" => "https://api.github.com/users/bsodmike/gists{/gist_id}",
   "gravatar_id" => "", "hireable" => true,
   "html_url" => "https://github.com/bsodmike", "id" => 368260,
   "location" => "London", "login" => "bsodmike", "name" => "Michael de Silva",
   "organizations_url" => "https://api.github.com/users/bsodmike/orgs",
   "public_gists" => 162, "public_repos" => 107,
   "received_events_url" => "https://api.github.com/users/bsodmike/received_events",
   "repos_url" => "https://api.github.com/users/bsodmike/repos",
   "site_admin" => false,
   "starred_url" => "https://api.github.com/users/bsodmike/starred{/owner}{/repo}",
   "subscriptions_url" => "https://api.github.com/users/bsodmike/subscriptions",
   "type" => "User", "updated_at" => "2015-09-04T04:37:36Z",
   "url" => "https://api.github.com/users/bsodmike"}}
```
