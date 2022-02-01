# Geompapa

Source code for an educational webpages about rocks.
 
Hosted at [https://www.netlify.com](https://www.netlify.com)

Available at [https://geomapa.lounovicepodblanikem.cz](https://geomapa.lounovicepodblanikem.cz)

Built by [Jekyll](http://jekyllrb.com/)


## Build

    bundle exec jekyll serve


## Large Media Storage

Specify which files you would like to track with Large Media by using the `git lfs track` command.

To list all the files being tracked based on these rules, run: `git lfs ls-files`


## Netlify Setup

For more details, see [Netlify Doc](https://docs.netlify.com/) or read highlights bellow.


### Installation

This installs Netlify CLI globally:

```sh
npm install netlify-cli -g
```


### Authentication

To authenticate and obtain an access token using the command line, enter the following command from any directory:

```sh
netlify login
```


### Large Media Setup

Link your local repository to the site on Netlify:

```sh
netlify link
```
