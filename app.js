const express = require('express');
const app = express();
const port = 3000;

app.get('/', function(req, res){
    res.send('Hello World this is my portfolio commit terbaru')
});

app.listen(port, () => {
    console.log(`Server running in port ${port}`);
});