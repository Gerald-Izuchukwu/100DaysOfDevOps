const express = require('express');
const app = express()
const PORT = process.env.PORT || 3500

app.get('/', (req, res)=>{
    res.status(200).json({msg: "Hello World"})
})

app.listen(PORT, ()=>{
    console.log(`Server is listening on ${PORT}`);
})