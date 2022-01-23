require("dotenv").config()

const express = require('express')
const app = express()
const db = require('./queries')

app.use(express.json())

//Get all students
//http://localhost:3000/students
app.get("/students", async(req, res) =>{
    const results = await db.query("Select * from students")
    res.json(results.rows)
})

//Get one student
// http://localhost:3000/students/1
app.get("/students/:id", async(req, res) => {
    console.log(req.params.id)
    try{
        const results = await db.query(`Select * from students where stu_id = ${req.params.id}`)
        res.json(results.rows)
        console.log(results.rows)
    } catch(err) {
        console.log(err)
    }
})

//Insert one student
//http://localhost:3000/students
app.post("/students", async(req, res) => {
    console.log(req.body)
    try {    
        const results = await db.query('INSERT INTO students(stu_id, stu_lname, stu_fname, student_phone) VALUES($1, $2, $3, $4) returning*', 
        [req.body.stu_id, req.body.stu_lname, req.body.stu_fname, req.body.student_phone])
        res.json(results.rows)
    }catch(err) {
        console.error(err.message)
    }
})

const port = process.env.PORT
app.listen(port, () => {
    console.log(`App running on port ${port}.`)
  })

