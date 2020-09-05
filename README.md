## INTERSECT


This is the repository containing the webpages for the INTERSECT project.

### Contributing

The INTERSECT website encourages community contributions consistent with our goals and code of conduct.

To suggest a change, fork the repository and make your proposed changes.
Then test locally (see below) to ensure your changes are behaving as anticipated.
If it's a very minor change (a typo, one line addition) a local preview may not be necessary, but for all other modifications, it's strongly encouraged to test locally before submitting a pull request.
After previewing and confirming things look good create a pull request against `gh-pages`.

#### Adding authorship

Posts should include the `author:` field using the name defined by an entry in the '_data/authors.yml' 

#### Build and Preview locally

To build and preview the site locally, you'll need to [install jekyll](https://jekyllrb.com/docs/installation/)
It's then typical to go to the root directory of the site and issue (just once):

```bash
$ bundle install
```

And then (also in the top level directory of your forked repository) run

```bash
$ jekyll serve --config _config.yml,_config_dev.yml
# or
$ bundle exec jekyll serve --config _config.yml,_config_dev.yml
```

and open your browser to <http://localhost:4000>.
Note the
`--config _config.yml,_config_dev.yml` enables easy local previewing by using the `_config_dev.yml` file to replace certain values in `_config.yml`, avoiding the need to make local changes.

#### Troubleshooting local previews
If you are having trouble with your local preview try `rm -rf _site`, followed by `bundle update`, then `bundle exec jekyll serve`.

## Funding
This project is supported by National Science Foundation awards [2017424](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2017424&HistoricalAwards=false) and [2017259](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2017259&HistoricalAwards=false). Any opinions, findings, conclusions or recommendations expressed in this material are those of the developers and do not necessarily reflect the views of the National Science Foundation.

![](https://i.imgur.com/9qujX6H.png)


### Contacts
Ian A. Cosden, Princeton University  
Jeffrey Carver, University of Alabama
