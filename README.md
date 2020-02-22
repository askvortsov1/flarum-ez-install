# Flarum EZ Install (Proof of Concept)

This repo houses my exploration of making installing/updating the flarum skeleton easier for shared hosting users. Please note that this is highly experimential, and that support is not guarunteed. Also, keep in mind that this is only for shared hosting: if you have root access to your machine, you should probably follow Flarum's official installation instructions (https://flarum.org/docs/install.html).

## TODO

- Support custom paths
- Make Bazaar install stuff faster
- Ensure that file permissions are set properly

## Installation

1. Go to your site's root directory
2. Run `wget -O - https://raw.githubusercontent.com/askvortsov1/flarum-ez-install/master/flarum.sh | bash` in terminal