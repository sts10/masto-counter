# Masto-Counter

This is a little one-file Ruby script that gets some stats on the [Mastodon network](http://mastodon.social/). 

**WARNING**: I'm archiving this repo because this code is likely very out-of-date.

## Run it yourself

To run it yourself, you'll need to [have Ruby running](https://github.com/tootsuite/mastodon/blob/master/docs/Running-Mastodon/Production-guide.md#rbenv) and then install the `nokogiri` gem, which you can do by running `gem install nokogiri`. Then clone this repo down and run `ruby counter.rb`.


## Where's the data from? 

The data is scraped from [https://instances.mastodon.xyz/](https://instances.mastodon.xyz/), which was built by [@TheKinrar@mastodon.xyz](https://mastodon.xyz/@TheKinrar) 

## The numbers of total users and instances seems low? 

This is likely because other scrapers of the instance page don't sufficiently weed out duplicate instances. For example, previously [this table](https://instances.mastodon.xyz/) both "Social.tchncs.de" and "social.tchncs.de" were listed on their own lines, and thus could have been counted as distinct instances by others, even though it's just one instance. It appears that the duplicated have been removed from the table, but this code still checks for them _just in case_.

## Show me an example of the output

Sure! Here's an example (now out-of-date) of the text it outputs to your terminal when run:

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
