# Changelog

## v2.7.0 (Apollo Software fork)

 * Bump dependencies
 * Remove telemetry
 * Remove HTTP server push testing and support (no longer supported in major browsers)
 * Remove tests for HTTPS (broken under OTP 26) (you should use a reverse proxy for HTTPS anyway)

## v2.6.1

### Enhancements

 * Allow for opt-out of conn metadata on exception logs
 * Support `:check_interval` in drainer (in addition to `:drain_check_interval`)

## v2.6.0

### Enhancements

  * Support websocket upgrades
  * Require Plug v1.14+ and Elixir v1.10+

## v2.5.2

### Enhancements

  * Fix warnings when running on telemetry 1.x

## v2.5.1

### Enhancements

  * Allow to configure which errors should be logged
  * Support telemetry 0.4.x or 1.x

## v2.5.0

### Enhancements

  * Return `:conn` as Logger metadata on translator
  * Support Ranch 2.0
  * Support the `:net` option so developers can work with keyword lists
  * Remove previously deprecated options

## v2.4.1 (2020-10-31)

### Bug fixes

  * Properly format linked exits

## v2.4.0 (2020-10-11)

### Bug fixes

  * Add [cowboy_telemetry](https://github.com/beam-telemetry/cowboy_telemetry/) as a dependency and enable it by default

## v2.3.0 (2020-06-11)

Plug.Cowboy requires Elixir v1.7 or later.

### Bug fixes

  * The telemetry events added in version v2.2.0 does not work as expected. The whole v2.2.x branch has been retired in favor of v2.3.0.

## v2.2.2 (2020-05-25)

### Enhancements

  * Emit telemetry event for Cowboy early errors
  * Improve error messages for Cowboy early errors

## v2.2.1 (2020-04-21)

### Enhancements

  * Use proper telemetry metadata for exceptions

## v2.2.0 (2020-04-21)

### Enhancements

  * Include telemetry support

## v2.1.3 (2020-04-14)

### Bug fixes

  * Properly support the :options option before removal

## v2.1.2 (2020-01-28)

### Bug fixes

  * Properly deprecate the :timeout option before removal

## v2.1.1 (2020-01-08)

### Enhancement

  * Improve docs and simplify child spec API

## v2.1.0 (2019-06-27)

### Enhancement

  * Add `Plug.Cowboy.Drainer` for connection draining

## v2.0.2 (2019-03-18)

### Enhancements

  * Unwrap `Plug.Conn.WrapperError` on handler error
  * Include `crash_reason` as logger metadata

## v2.0.1 (2018-12-13)

### Bug fixes

  * Respect `:read_length` and `:read_timeout` in `read_body` with Cowboy 2

## v2.0.0 (2018-10-20)

Extract `Plug.Adapters.Cowboy2` from Plug into `Plug.Cowboy`
