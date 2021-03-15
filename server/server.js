const express = require('express');
const app = express();
const PORT = process.env.PORT || 5000;

const classesRouter = require('./routes/classes.router');

app.use(express.static('build'));
app.use(express.json());

app.listen(PORT, () => console.log(`Listening on port ${PORT}....`));

// Routes
app.use('/api/classes', classesRouter);