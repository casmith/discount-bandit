# cybrarist/discount-bandit with current Debian security updates. Upstream
# rebuilds rarely, and the image ships Chromium (it scrapes product pages with
# it), so its CVE count climbs with every Chromium release. This rebuild only
# upgrades packages; the app is untouched.
FROM cybrarist/discount-bandit:v4.0.5

RUN apt-get update \
    && apt-get upgrade -y --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
