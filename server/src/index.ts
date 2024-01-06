import appDataSource from './config/dataSource';
import validateEnv from './utils/validateEnv';

// Sync ENV file
import config from './config/config';
import { app } from './app';

appDataSource
  .sync({ force: false })
  .then(async () => {
    // VALIDATE ENV
    validateEnv();

    // Start server
    const serverHttp = require('http').createServer(app);
    function startServer() {
      const port = config.server.port;
      const ip = config.server.ip;
      serverHttp.listen(port, ip, function () {
        console.log('Express server listening on %s:%d, in %s mode', ip, port, app.get('env'));
      });
    }
    setImmediate(startServer);
  })
  .catch((error) => console.log(error));
