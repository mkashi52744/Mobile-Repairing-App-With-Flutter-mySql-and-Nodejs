const mysql = require('mysql');
const express=require('express');
const app=express();
app.use(express.json());
const con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: "doctorga_mob"
});

con.connect((err) => {
  if(err){
    console.log('Error connecting to Db');
    return;
  }
  console.log('Connection established');
});

app.post("/model",  async(req,res)=>
{
    try{
      
await con.query("INSERT INTO customers(first_name,email,password,address1,phone1) VALUES('"+req.body.name+"','"+req.body.email+"','"+req.body.password+"','"+req.body.phone+"','"+req.body.address+"') ",(err)=>{
if (err)
throw err;
res.status(201).send(req.body);
console.log("Data Inserted")
      }
      );

       console.log(req.body);

    }catch(e){
        res.send(e);

    }
})
app.post("/login",  async(req,res)=>
{
    try{
      
await con.query("select * from customers WHERE email='"+req.body.email+"' && password='"+req.body.password+"'",(err,rows)=>{
if (err)
throw err;
if(rows==0)
{
  res.status(400).send(rows);
  console.log("Data Not Finded")
}
else{

  res.status(200).send(rows);
console.log("Data Finded")}
      }
      );

    }catch(e){
        res.send(e);

    }
})
app.get("/getmodels/:name",  async(req,res)=>
{ 
  var name=req.params.name;

    try{
      
await con.query("select * from repair_products WHERE product_name='"+name+"'",(err,rows)=>{
if (err)
throw err;
if(rows==0)
{
  res.status(400).send(rows);
  console.log("Data Not Finded")
}
else{

  res.status(200).send(rows)
console.log("Data Finded")}
      }
      );

    }catch(e){
        res.send(e);

    }
})
app.get("/fault/:name",  async(req,res)=>
{ 
  var name=req.params.name;

    try{
      
await con.query("select * from repair_fault WHERE fault_name='"+name+"'",(err,rows)=>{
if (err)
throw err;
if(rows==0)
{
  res.status(400).send(rows);
  console.log("Data Not Finded")
}
else{

  res.status(200).send(rows)
console.log("Data Finded")}
      }
      );

    }catch(e){
        res.send(e);

    }
})
app.get("/getbrand/:name",  async(req,res)=>
{ 
  var name=req.params.name;

    try{
      
await con.query("select * from manufacturers WHERE name='"+name+"'",(err,rows)=>{
if (err)
throw err;
if(rows==0)
{
  res.status(400).send(rows);
  console.log("Data Not Finded")
}
else{

  res.status(200).send(rows)
console.log("Data Finded")}
      }
      );

    }catch(e){
        res.send(e);

    }
})
app.get("/getcost/:m_id/:p_id/:f_id",  async(req,res)=>
{ 
  var m_id=req.params.m_id;
  var p_id=req.params.p_id;
  var f_id=req.params.f_id;

    try{
      
await con.query("select * from fault_product_price WHERE manufacturer_id='"+m_id+"' && product_id='"+p_id+"'&& fault_id='"+f_id+"'",(err,rows)=>{
if (err)
throw err;
if(rows==0)
{
  res.status(400).send(rows);
  console.log("Data Not Finded")
}
else{

  res.status(200).send(rows)
console.log("Data Finded")}
      }
      );

    }catch(e){
        res.send(e);

    }
})
app.get("/users", async(req,res)=>{

    await con.query('select * from manufacturers', (err,rows) => {
    if(err){ throw err;}
    
    else{
    console.log('Data received from Db:');
    res.send(rows);}
  });
})
app.get("/models", async(req,res)=>{

  await con.query('select * from repair_products', (err,rows) => {
  if(err){ throw err;}
  
  else{
  console.log('Data received from Db:');
  res.send(rows);}
});
})
app.get("/fault", async(req,res)=>{

  await con.query('select * from repair_fault', (err,rows) => {
  if(err){ throw err;}
  
  else{
  console.log('Data received from Db:');
  res.send(rows);}
});
})
app.listen(3000,()=>{
  console.log(`Server is running at  port`);
})

