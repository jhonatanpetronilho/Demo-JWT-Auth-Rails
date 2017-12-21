# README

## Simple Authenticate Rails App

Simple sample app for my minimalist projects.
This add some helpers for easy user management.

### Helper Methods:

`account_signed_in?`, `current_account`, `account_admin?`.

#### Details:

* `account_signed_in?`: Verify logged user, if not found, return to login path.
* `current_account`: Return current account information.
* `account_admin?`: Unless `account.admin == true` return to authorized user path.

Use and improve. Good day for you! :D
