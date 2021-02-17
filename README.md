# company-bootstrap-icons

Emacs company backend for Bootstrap Icons 1.4.0 version

## Look at the examples

![Screenshot](https://typefo.com/assets/img/company-bootstrap-example.jpg)

## how to install?

### Manual installation

1. Download this package

```
$ git clone https://github.com/yonta/company-bootstrap.git
```

2. Copy it to the emacs autoload directory

```
$ cp -R company-bootstrap ~/.emacs.d/lisp
```

## How can I configure to use it?

First you make sure you have the `company` package installed

```
(add-hook 'after-init-hook 'global-company-mode)
```

Then add the following content to the emacs configuration file

```
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-bootstrap))
```

## How to enable only in html mode?

Html defaults to `nxml-mode` in emacs, Just add a hook to it

```
(add-hook 'nxml-mode-hook '(lambda ()
            (add-to-list 'company-backends 'company-bootstrap)))
```
