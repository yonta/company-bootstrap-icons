# company-bootstrap-icons

Emacs company backend for Bootstrap Icons 1.4.0 version

## Look at the examples

![Screenshot](https://raw.githubusercontent.com/yonta/company-bootstrap-icons/main/screenshot.png)

## how to install?

### Manual installation

1. Download this package

```
$ git clone https://github.com/yonta/company-bootstrap-icons.git
```

2. Copy it to the emacs autoload directory

```
$ cp -R company-bootstrap-icons ~/.emacs.d/lisp
```

## How can I configure to use it?

First you make sure you have the `company` package installed

```
(add-hook 'after-init-hook 'global-company-mode)
```

Then add the following content to the emacs configuration file

```
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-bootstrap-icons))
```

## How to enable only in html mode?

Html defaults to `nxml-mode` in emacs, Just add a hook to it

```
(add-hook 'nxml-mode-hook '(lambda ()
            (add-to-list 'company-backends 'company-bootstrap-icons)))
```

If you use `web-mode` and `company-web-html`, just like this

``` emacs-lisp
(add-to-list `company-backends
             `(company-web-html :with company-bootstrap-icons))
```

## Original repository

This repository is fork repository from
[company-bootstrap](https://github.com/typefo/company-bootstrap).
Original is made by typefo.
