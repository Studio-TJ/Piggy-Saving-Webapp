# Note
Since I focused on iOS app in the past months, this webapp is obsolete now. A big overhaul will be made later. 

# :pig::pig:Piggy Saving

This is the webapp (frontend) part of project Piggy Saving. You need the backend to run this app. Check [this repo](https://github.com/Studio-TJ/Piggy-Saving-Backend) for frontend webapp (under development, with bug). There is also an iOS version under development, with local mode.

## What is Piggy Saving?

Piggy Saving is an idea for saving a small amount of money every day. The amount shall be different every day. It is kind of mimicking how you save money with a real :pig: piggy bank. The idea behind it is to choose a length, and randomly select the amount between 1 unit and x unit (x is your saving length).

## What functions do this app have?

* Generate a new number every day. (default to 1 am)
* If you think the number is too much, you can roll the dice once again.
* Display total amount of money you have saved till now.
* Display the list of saving.
* Record saving manually
* Email notification if you haven't saved.

## How to use?

You need a Linux based server, can also be a raspberry pi. Under any Debian-like system, run:

```bash
./install.sh
```

If you are using other Linux distributions, then you have to figure out how to install.
