# Laravel Bitbucket Pipeline Image
This image was specially built to run laravel in bitbucket pipeline.
It contains only packages that we really need (the minimum) to run our script inside the pipeline. 

## Goal
The purpose of this image is to save build minutes, that is why, we, for example, for database, are not adding mysql as it heavy enough to run in pipeline. Instead, we encourage you to use sqlite.
Another purpose is to help us to simplify our pipeline code.

## What's Included
- [php:7.2.17](https://hub.docker.com/_/php)
- [composer](https://getcomposer.org/)
- [hirak/prestissimo](https://github.com/hirak/prestissimo)
- [deployer](https://deployer.org/)
- openssh-client

## Tobe added (in case we need it)
- redis
- *you decide*


## Contributions
Contributions are welcome
