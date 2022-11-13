const express = require('express');
const router = express.Router();
const db = require('./db/database');

router.get("/", function(req, res, next){

	res.render('datatable');

});

router.post("/action", function(request, response, next){

	var action = request.body.action;


	if(action == 'fetch')
	{
        db.connect((err) => {

            if (err) throw err;
            let query =  "select k.*, string_agg(l.naziv || '-' || l.adresa, ';') as lokacije from kvizevi k,lokacije_kvizeva l where l.id_kviz = k.id_kviz group by k.id_kviz order by k.id_kviz"
            db.query(query, (err, result) => {
                
                if (err)
                    console.log(err.stack);
                else {
                    response.json({
                        data:result
                    });
                }
                db.end()
            })
        });
	}

});

module.exports = router;