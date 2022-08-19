const express = require('express');
const app = express();
const port = 3000;
// const expressLayouts = require('express-ejs-layouts');

app.set('view engine', 'ejs');
// app.use(expressLayouts)

app.use('/public', express.static('public'))


app.get('/', (req, res) => {
    res.render('index');
    // res.sendFile(__dirname + "/views/maintenance.html");
});

app.all('*', (req, res) => res.sendStatus(404))

app.listen(port, () => {
    console.log(`Server running in port ${port}`);
});