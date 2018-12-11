//not used

const data = require("./userData");


module.exports.login_check = function(info) {
    var to_return = {}
    console.log(info);
    return new Promise((resolve, reject) => {
        

            if (info.Email === 'user') {
                to_return['error'] = 1;
                resolve(to_return);
               
            } else if (info.Email === 'super') {
                to_return['error'] = 3;
                resolve(to_return);
             
            } else if (info.Email === 'admin') {
                to_return['error'] = 2;
                resolve(to_return)
              
            } else {
                to_return['error'] = 0;
                resolve(to_return);
            }
        

    })
}