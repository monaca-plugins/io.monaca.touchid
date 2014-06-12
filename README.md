## iOS Touch ID Plugin for Cordova / PhoneGap

This is a Cordova Plugin for using Touch ID sensor equipped with iPhone 5s. You need to build with iOS 8 SDK or the compile will fail.

## Platforms

* iOS 8

## Installation

Install with ``cordova plugin`` or ``plugman`` command. The JavaScript module will be injected automatically.

    $ cordova plugin add http://github.com/monaca-plugins/io.monaca.touchid

## Usage
    
    monaca.touchid.auth(successCallback, failCallback, message);

Displays Touch ID authentication screen, and ask for user fingerprint.

* **successCallback**: Called when the fingerprint matches the registered data.
* **failCallback**: Called when the dialog is cancelled.
* **message**: Message to display in the input dialog. Can be any string. 

## Sample App

You can see the sample app from the following GitHub repo.

 [https://github.com/monaca-plugins/samples/](https://github.com/monaca-plugins/samples/)

!["Touch ID Sample"](http://blog.monaca.mobi/wp-content/uploads/2014/06/touchid.png)

## How to Use

Described in our blog post. See the post [here](http://monaca.mobi/en/blog/archives/515).

## License

Copyright by [Monaca](http://monaca.mobi/). Distributed under Apache 2.0 License.
