#!/usr/bin/env coffee

import 'zx/globals'
import uridir from '@u7/uridir'
import {dirname} from 'path'

ROOT = uridir(import.meta)
cd ROOT

await $'./sh/svg-compress.sh'

await $'NODE_ENV=production ./build.coffee'
