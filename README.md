# Flarum EZ Install

Announcing a free, new, easy way to install Flarum on shared hosting! With this tool, you can install and update Flarum with:

- 1 line in the terminal
- No need for composer!
- No 3 minute wait time / intensive resource use

This install includes:
- Flarum core
- All bundled extensions
- Extiverse's Bazaar

As a side note, keep in mind that this is only necessary for shared hosting: if you're running a VPS, you should probably follow Flarum's official installation instructions (https://flarum.org/docs/install.html), or consider using a docker-based installation such as (https://github.com/mondediefr/docker-flarum).

## How To Use

1. Go to your site's root directory
2. Run `wget -O - https://raw.githubusercontent.com/askvortsov1/flarum-ez-install/master/flarum.sh | bash` in terminal
3. If using NGINX, make sure you add `import /INSERT/PATH/TO/FLARUM/.nginx.conf;` to your nginx's server directive. This only works if you're NOT running on a subdirectory. If you're on a subdirectory, you'll need to manually set up your nginx configuration. See <https://discuss.flarum.org/d/22778-flarum-instance-in-a-subfolder-doesn-t-work/26> for a working example.

Alternatively, (if trying to make a new installation), you can go to <https://github.com/askvortsov1/flarum-ez-install/releases>, download the zip you want, and unpack it. However, keep in mind that the command line install is recommended.

## Upgrade / Reinstallation

This system supports upgrade and reinstallation. However, because extensions might become outdated after upgrading, this tool disables all extensions when it's run on an existing flarum installation. After that, it is up to YOU to check the compatibility of each extension with the newest version of flarum / upgrade your non-core extensions via bazaar. If you enable something, and you get an error message, you should probably immediately disable it.

## Bazaar

This is geared towards users that don't necessarily have direct access to composer, so it includes Bazaar. However, because bazaar currently uses composer, it is very slow. It's likely that you get error messages when trying to install extensions. If that happens, try installing it again. For me, most extensions were installable via after 3-5 attempts through Bazaar, although this is not guarunteed.

## TODO

- Support subdirectory install on NGINX.
- Ensure that file permissions are set properly.
- Add web installer.
- Support for installing / reverting to older versions of flarum.

## Liability Disclaimer

This repo houses my exploration of making installing/updating the flarum skeleton easier for shared hosting users. Please note that this is experimential, and that support is not guarunteed. I have tested this, but I am not responsible or liable if it breaks your site.

## Feature Requests / Bugs / Feedback

Please leave a github issue if you have any feedback requests, bug reports, or other feedback that you'd like to share.

### Links

- [Github](https://github.com/askvortsov1/flarum-ez-install)
- [Discuss](https://discuss.flarum.org/d/23060-flarum-ez-installupdate-1-line-of-code-no-composer)
