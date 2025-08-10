const express = require('express');
const app = express();
const path = require('path');
const PORT = process.env.PORT || 8000;


app.use('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'main.html'));
});

app.listen(PORT, () => {
    console.log(`Serveur en cours d'exécution sur http://localhost:${PORT}`);
});

module.exports = app;