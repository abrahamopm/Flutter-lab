# Registration Lab

A Flutter user registration form with validation for name, email, password, and confirm password fields.

| App Screenshot | Widget Tree |
|:-:|:-:|
| ![App Screenshot](screenshots/screenshot.png) | ![Widget Tree](screenshots/widget_tree.png) |

## Description

This lab demonstrates Flutter form widgets and validation:
- `Form` with a `GlobalKey<FormState>` for form-level validation
- `TextFormField` with `InputDecoration` using `OutlineInputBorder`
- `TextEditingController` for each field with proper `dispose()`
- `validator` callbacks for required fields, email format, password length, and password match
- `ElevatedButton` triggering `_submitForm()` which shows an `AlertDialog` on success
- `SingleChildScrollView` wrapping the form to handle keyboard overflow
