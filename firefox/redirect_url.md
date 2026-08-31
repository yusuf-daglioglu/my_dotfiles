# RECIRECT URL

## mit-m-proxy

I have a simple example on my repositories. All details is written on readme file.

## requestly

I don't prefer it because:

- It requires registration with valid email.
- You have to pay.
- It does not store some information on browser locally. Therefore if you delete all cookies of the browser, you have to re-login with OTP.

## requestcontrol extension

only works on Firefox.

<https://github.com/tumpio/requestcontrol>

I don't prefer it because:

- It did not get updates since 4 years (but it still works - I tested it).
- rules and documentation are complex.

Simple redirection config:

- create new rule

- write on "Host" textbox:

  > <www.domain1.com>

- write on "Path" textbox: (if path exist)

  > path1/*

- Select the "Types" you want. if you redirect web service (mostly) only you need:

  > Document, Sub document, XMLHttpRequest

- Select "Action" as "Redirect"

- Write on "redirect url" textbox:

  > [hostname=localhost:8081]
