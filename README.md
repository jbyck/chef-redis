# DESCRIPTION:

Installs Redis. Redis is an open source, advanced key-value store.


Details http://redis.io/

This is a fork from original [https://github.com/ctrabold/chef-redis](chef-redis cookbook) used by Quandl.

# REQUIREMENTS:

Currently tested on Ubuntu 12.04

# USAGE:

* Add cookbook ``redis`` to your runlist. This will install redis on your machine.
* Add cookbook ``redis::source`` to your runlist. This will build redis on your machine from source. (default source is 2.4.18)
* Add cookbook ``redis::gem`` to your runlist. This will install the redis Rubygem.
* Add cookbook ``redis::remove`` to your runlist if you want to remove redis on your machine.

# Differences from chef-redis

Original [https://github.com/ctrabold/chef-redis](chef-redis cookbook)

* add additional configuration attributes
* remove chefspec, add test-kitchen
