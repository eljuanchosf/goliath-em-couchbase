## Goliath and Couchbase test

This is only for educational purposes.

## Install

Check out [this post](http://www.jpgenovese.com/2012/11/13/how-to-install-couchbase-and-couchbase-model-gems-in-ubuntu-10-04/)
to install the required libcouchbase for Ubuntu 10.04.

## Run

    bundle install
    ruby goliath_couchbase.rb -sv -e prod

## Testing

I used [JMeter](http://jmeter.apache.org/) to load test this thingy and worked out quite well even with the
plan stupidity of the code. :)