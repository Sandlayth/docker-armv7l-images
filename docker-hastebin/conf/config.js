{

  "host": "0.0.0.0",
  "port": 80,

  "keyLength": 4,

  "maxLength": 400000,

  "staticMaxAge": 86400,

  "recompressStaticAssets": true,

  "logging": [
    {
      "level": "error",
      "type": "Console",
      "colorize": true
    }
  ],

  "keyGenerator": {
    "type": "random",
    "keyspace" : "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  },

  "storage": {
    "type": "file",
    "path": "./data"
  },

  "documents": {
    "about": "./about.md"
  }

}
