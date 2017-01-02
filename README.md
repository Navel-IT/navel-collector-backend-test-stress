navel-collector-test-stress
===========================

A collector to stress test.

Status
------

- master

[![Build Status](https://travis-ci.org/Navel-IT/navel-collector-test-stress.svg?branch=master)](https://travis-ci.org/Navel-IT/navel-collector-test-stress?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/Navel-IT/navel-collector-test-stress/badge.svg?branch=master)](https://coveralls.io/github/Navel-IT/navel-collector-test-stress?branch=master)

- devel

[![Build Status](https://travis-ci.org/Navel-IT/navel-collector-test-stress.svg?branch=devel)](https://travis-ci.org/Navel-IT/navel-collector-test-stress?branch=devel)
[![Coverage Status](https://coveralls.io/repos/github/Navel-IT/navel-collector-test-stress/badge.svg?branch=devel)](https://coveralls.io/github/Navel-IT/navel-collector-test-stress?branch=devel)

Installation
------------

```bash
cpanm https://github.com/navel-it/navel-collector-test-stress.git
```

Configuration
-------------

```json
{
    "backend": "Navel::Collector::Test::Stress",
    "backend_input": {
        "number_of_job": 500,
        "array_size": 10
    }
}
```

Copyright
---------

Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras

License
-------

navel-collector-test-stress is licensed under the Apache License, Version 2.0
