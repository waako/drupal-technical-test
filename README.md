# White October Technical Test

This is a simple [Drupal](http://drupal.org/) test. It involves installing a Drupal site, performing some configuration and build tasks to demonstrate an understanding of the administration interface, creating a child theme, and then writing a small module to demonstrate an understanding of the Drupal APIs.

## Setup

### Setup with Vagrant

This project is setup with [Vagrant](http://vagrantup.com) and comes with Chef cookbooks. Follow [the setup guide](http://docs.vagrantup.com/v2/getting-started/) to get your machine ready for Vagrant 

Once you have it installed in the project root run "vagrant up". This will provision your box.

### Setup with your own development environment 

You need to be running PHP5.3.3>, a webserver (Apache/Nginx), and MySQL. You will also need to install drush if it's not already installed.

## The Tasks

[NOTE: These need further work to flesh out]

### Building

* Instantiate site in /var/www with supplied make file
* Install site using 'minimal' profile
* Enable the following modules: date, email [more to list]
* Create an 'event' content type that has title, description, date, and address
* Build a view with two page displays
    * Upcoming events (/events/upcoming)
    * Past events (/events/past)
* Export the events content type and views to a Feature

### Theming

* Create a child theme based on the supplied Zen base theme
* Create a custom template for the event content type

### Developing

* TODO 

## Extras

If you'd like to go the extra mile then maybe do some of the following

* TODO
