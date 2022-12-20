const express = require('express');
const { parse } = require('pg-protocol');
const router = express.Router();
const db = require('./db/database');

router.get("/", function(req, res, next){

	res.render('home', {title : 'Node JS Ajax CRUD Application'});

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
                //db.end()
            })
        });
	}

});

router.get("/quizzes", function(request, response, next){
    db.query('SELECT * FROM kvizevi', (err, result) => {
      if (err)
        throw err
      response.status(200).json({status: 'OK', message: "Fetched quiz object", response: result.rows})
      //db.end()
    })
  });

router.get("/quizzes/:id", function(request, response, next){
    const id = parseInt(request.params.id);
    db.query('SELECT * FROM kvizevi WHERE id_kviz = $1', [id], (error, results) => {
        if (error) {
            throw error
        }
        else if(results.rows.length === 0){
          response.status(404).json({status: 'Not Found', message: "Quiz with the provided ID doesn't exist", response: 'null'});
        }
        else{
          response.status(200).json({status: 'OK', message: "Fetched quiz object", response: results.rows})
        }
    })
});

router.post("/quizzes", function(request, response, next){
    const { id_kviz, name, description, max_teams, popularity, duration, team_number, theme, time, rewards, registrarion_fee, contact, picture } = request.body
    db.query('SELECT * FROM kvizevi WHERE id_kviz = $1 or name = $2', [id_kviz, name], (error, results) => {
        if(results.rows.length){
          response.status(404).json({status: 'Not Found', message: "Quiz with the provided ID or Name already exists", response: 'null'});
        }
        else{
          db.query('INSERT INTO kvizevi (id_kviz, name, description, max_teams, popularity, duration, team_number, theme, time, rewards, registrarion_fee, contact, picture) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)', 
          [id_kviz, name, description, max_teams, popularity, duration, team_number, theme, time, rewards, registrarion_fee, contact, picture], (error, results) => {
            if (error) {
              throw error
            }
            response.status(201).json({status: 'OK', message: "Quiz added successfully"})
          })
        }
    });
});

router.put("/quizzes/:id", function(request, response, next){
    const id = parseInt(request.params.id)
    const { name, description, max_teams, popularity, duration, team_number, theme, time, rewards, registrarion_fee, contact, picture } = request.body
  
    db.query(
      'UPDATE kvizevi SET name = $2, description = $3, max_teams = $4, popularity = $5, duration = $6, team_number = $7, theme = $8, time = $9, rewards = $10, registrarion_fee = $11, contact = $12, picture = $13 WHERE id_kviz = $1', 
      [id, name, description, max_teams, popularity, duration, team_number, theme, time, rewards, registrarion_fee, contact, picture],
      (error, results) => {
        if (error) {
          throw error
        }
        response.status(200).json({status: 'OK', message: "Quiz modified successfully"})
      }
    )
});

router.delete("/quizzes/:id", function(request, response, next){
    const id = parseInt(request.params.id)
  
    db.query('DELETE FROM kvizevi WHERE id_kviz = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json({status: 'OK', message: 'Quizz deleted successfully'})
    })
});

router.get("/quizzes/name/:name", function(request, response, next){
  const name = request.params.name;
  db.query('SELECT * FROM kvizevi WHERE name = $1', [name], (error, results) => {
      if (error) {
          throw error
      }
      else if(results.rows.length === 0){
        response.status(404).json({status: 'Not Found', message: "Quiz with the provided name doesn't exist", response: 'null'});
      }
      else{
        response.status(200).json({status: 'OK', message: "Fetched quiz object", response: results.rows})
      }
  })
});

router.get("/quizzes/team_number/:team_number", function(request, response, next){
  const id = parseInt(request.params.team_number);
  db.query('SELECT * FROM kvizevi WHERE team_number = $1', [id], (error, results) => {
      if (error) {
          throw error
      }
      else if(results.rows.length === 0){
        response.status(404).json({status: 'Not Found', message: "Quiz with the provided team number doesn't exist", response: 'null'});
      }
      else{
        response.status(200).json({status: 'OK', message: "Fetched quiz object", response: results.rows})
      }
  })
});

router.get("/quizzes/time/:time", function(request, response, next){
  const time = request.params.time;
  db.query('SELECT * FROM kvizevi WHERE time = $1', [time], (error, results) => {
      if (error) {
          throw error
      }
      else if(results.rows.length === 0){
        response.status(404).json({status: 'Not Found', message: "Quiz with the provided time doesn't exist", response: 'null'});
      }
      else{
        response.status(200).json({status: 'OK', message: "Fetched quiz object", response: results.rows})
      }
  })
});


module.exports = router;