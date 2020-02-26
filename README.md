# Flarum EZ Install

This repo houses my exploration of making installing/updating the flarum skeleton easier for shared hosting users. Please note that this is experimential, and that support is not guarunteed. Also, keep in mind that this is only necessary for shared hosting: if you're running a VPS, you should probably follow Flarum's official installation instructions (https://flarum.org/docs/install.html), or consider using a docker-based installation such as (https://github.com/mondediefr/docker-flarum).

## Functionality

Essentially, this provides an easy, non-resource-intensive way to install/update Flarum. Components that are installed/updated include the core software, all bundled extensions, and Extiverse's Bazaar extension.

## TODO

- Support custom root paths
- Ensure that file permissions are set properly

## Bazaar

This is geared towards users that don't necessarily have direct access to composer, so it includes Bazaar. However, because bazaar currently uses composer, it is very slow. It's likely that you get error messages when trying to install extensions. If that happens, try installing it again. For me, most extensions were installable via after 3-5 attempts through Bazaar, although this is not guarunteed.

## Installation

1. Go to your site's root directory
2. Run `wget -O - https://raw.githubusercontent.com/askvortsov1/flarum-ez-install/master/flarum.sh | bash` in terminal

## Feature Requests / Bugs / Feedback

Please leave a github issue if you have any feedback requests, bug reports, or other feedback that you'd like to share.