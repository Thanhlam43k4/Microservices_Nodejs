import express from 'express';
const app = express();

app.get('/',(req,res)=>{
    res.json({msg : 'Access app successfully!!'});
})

app.listen(3000,()=>{
    console.log('App is listenning on port 3000')
})