# discount-bandit

[cybrarist/discount-bandit](https://github.com/Cybrarist/Discount-Bandit) with
current Debian security updates applied, published as
`ghcr.io/casmith/discount-bandit`.

Upstream rebuilds its image rarely, and it bundles Chromium, so it falls behind
on security fixes quickly. This repo rebuilds it weekly with `apt-get upgrade`
and changes nothing else.

Tags are `<upstream tag>-<UTC build time>`, e.g. `v4.0.5-202611011530`, and
are never overwritten. A scheduled build only publishes when the upgraded package set
differs from the last published image.
