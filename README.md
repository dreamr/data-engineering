# LivingSocial Challenge

For this challenge I followed the requirements, and did a MVP on em. I
also did it in the least code possible, which is one of my hallmarks. I
can't golf a green to save my life, but I golf code like a champ.

I didn't bother to do any major validation as the example said I can
expect all fields with all values. It really wouldn't matter the way I
wrote this, it would just discard the things it can't process. Another
hallmark of mine.

## Lines of actual work code

not counting def and end and the like....

*14 lines of code!!!*

This is of course after it was refactored down. Hope you enjoy!

## Architecture

2 files to note really
  * app/models/concerns/import_from_disorganized_hash.rb
  * lib/purchases_from_tab_file

These two places are were the real work happens. The code was reusable
across all models. I use a variety of methods to make this all happen. I
am a big fan of single purpose modules. I prefer composition to
inheritence. I try to be itempotent when I can be, I stay away from
state management whenever possible.

## An apology

* I apologize for the lack of tests. I was getting guard errors and I
  wanted to focus on the task not debugging my xubuntu setup. I have a
  round of that planned this weekend :)

## Setup

```bash
git clone git@github.com:dreamr/data-engineering.git
cd data-engineering/migration_app
bundle
rails s
``` 

open 0.0.0.0:3000 in a browser

select the example file (located in the root)
Click upload

The data will be imported and mapped (w/relations) and then it will
display the gross revenue.

How cool is that?

