# Lab 6

## Docker

1. 

2. 

3. 

4. 
```bash
[root@nagini-337 example04]# docker run message-app
debug: The `sails.config.models.connection` setting is deprecated.  Please use `sails.config.models.datastore` instead.
debug: For more info, see http://sailsjs.com/documentation/upgrading/to-v-1-0/#?changes-to-database-configuration

error: A hook (`orm`) failed to load!
error: Could not tear down the ORM hook.  Error details: Error: Consistency violation: Attempting to tear down a datastore (`mongo`) which is not currently registered with this adapter.  This is usually due to a race condition in userland code (e.g. attempting to tear down the same ORM instance more than once), or it could be due to a bug in this adapter.  (If you get stumped, reach out at http://sailsjs.com/support.)
    at Object.teardown (/app/node_modules/sails-mongo/lib/index.js:390:19)
    at /app/node_modules/waterline/lib/waterline.js:758:27
    at /app/node_modules/waterline/node_modules/async/dist/async.js:3047:20
    at eachOfArrayLike (/app/node_modules/waterline/node_modules/async/dist/async.js:1002:13)
    at eachOf (/app/node_modules/waterline/node_modules/async/dist/async.js:1052:9)
    at Object.eachLimit (/app/node_modules/waterline/node_modules/async/dist/async.js:3111:7)
    at Object.teardown (/app/node_modules/waterline/lib/waterline.js:742:11)
    at Hook.teardown (/app/node_modules/sails-hook-orm/index.js:246:30)
    at Sails.wrapper (/app/node_modules/@sailshq/lodash/lib/index.js:3275:19)
    at Object.onceWrapper (events.js:277:13)
    at Sails.emit (events.js:189:13)
    at Sails.emitter.emit (/app/node_modules/sails/lib/app/private/after.js:56:26)
    at /app/node_modules/sails/lib/app/lower.js:67:11
    at beforeShutdown (/app/node_modules/sails/lib/app/lower.js:45:12)
    at Sails.lower (/app/node_modules/sails/lib/app/lower.js:49:3)
    at Sails.wrapper [as lower] (/app/node_modules/@sailshq/lodash/lib/index.js:3275:19)
error: Failed to lift app: Error: Consistency violation: Unexpected error creating db connection manager:
\`\`\`
MongoError: failed to connect to server [localhost:27017] on first connect [MongoError: connect ECONNREFUSED 127.0.0.1:27017]
    at flaverr (/app/node_modules/flaverr/index.js:94:15)
    at Function.module.exports.parseError (/app/node_modules/flaverr/index.js:371:12)
    at Function.handlerCbs.error (/app/node_modules/machine/lib/private/help-build-machine.js:665:56)
    at connectCb (/app/node_modules/sails-mongo/lib/private/machines/create-manager.js:130:22)
    at connectCallback (/app/node_modules/mongodb/lib/mongo_client.js:428:5)
    at /app/node_modules/mongodb/lib/mongo_client.js:335:11
    at process._tickCallback (internal/process/next_tick.js:61:11)
\`\`\`
    at Object.error (/app/node_modules/sails-mongo/lib/index.js:268:21)
    at /app/node_modules/machine/lib/private/help-build-machine.js:1514:39
    at proceedToFinalAfterExecLC (/app/node_modules/parley/lib/private/Deferred.js:1149:14)
    at proceedToInterceptsAndChecks (/app/node_modules/parley/lib/private/Deferred.js:909:12)
    at proceedToAfterExecSpinlocks (/app/node_modules/parley/lib/private/Deferred.js:841:10)
    at /app/node_modules/parley/lib/private/Deferred.js:303:7
    at /app/node_modules/machine/lib/private/help-build-machine.js:952:35
    at Function.handlerCbs.error (/app/node_modules/machine/lib/private/help-build-machine.js:742:26)
    at connectCb (/app/node_modules/sails-mongo/lib/private/machines/create-manager.js:130:22)
    at connectCallback (/app/node_modules/mongodb/lib/mongo_client.js:428:5)
    at /app/node_modules/mongodb/lib/mongo_client.js:335:11
    at process._tickCallback (internal/process/next_tick.js:61:11)
```
