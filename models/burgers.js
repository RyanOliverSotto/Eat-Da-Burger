var orm = require('../config/orm.js');

var burger = {
    selectAll: (cb) => {
        orm.selectAll('burgers', (response) => {
            cb(response);
        });
    },

    insertOne: (columns, values, cb) => {
        orm.insertOne('burgers', columns, values, (response) => {
            cb(response);
        });
    },

    updateOne: (objColValues, condition, cb) => {
        orm.updateOne('burgers', objColValues, condition, (response) => {
            cb(response);
        });
    },
    
    deleteOne: (condition, cb) =>{
        orm.deleteOne('burgers', condition, (response) => {
          cb(response);
        });
      }

};

module.exports = burger;