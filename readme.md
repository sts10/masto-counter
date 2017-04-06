# Masto-Counter

This is a little one-file Ruby script that gets some stats on the Mastodon network. 

## Run it yourself

To run it yourself, you'll need to [have Ruby running](https://github.com/tootsuite/mastodon/blob/master/docs/Running-Mastodon/Production-guide.md#rbenv) and then install the `nokogiri` gem, which you can do by running `gem install nokogiri`.

## Where's the data from? / Show me an example of the output

The data is scraped from [https://instances.mastodon.xyz/](https://instances.mastodon.xyz/), which was built by [@TheKinrar@mastodon.xyz](https://mastodon.xyz/@TheKinrar) 

Here's an example (now out-of-date) of the text it outputs to your terminal when run:

```
Current Mastodon stats!

81,706 users across 147 instances (140 of which are UP)

Top 15 instances by number of users:
mastodon.social (41,703)
mastodon.xyz (5,627)
social.tchncs.de (5,580)
mastodon.cloud (4,025)
social.targaryen.house (3,968)
octodon.social (2,757)
social.lou.lt (1,652)
mastodon.cx (1,327)
hostux.social (1,162)
memetastic.space (1,094)
mastodon.technology (814)
mastodon.network (811)
mstdn.io (756)
awoo.space (732)
securitymastod.one (718)

(via https://instances.mastodon.xyz/)
```

BTW my Mastodon handle is [@schlink@octodon.social](http://octodon.social/@schlink)
