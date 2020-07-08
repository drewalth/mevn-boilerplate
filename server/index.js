const app = require('express')()

app.get('/ping', (req, res) => {
  res.send({message: 'pong'}).status(200)
})

app.listen(3333, () => {
  console.log('app listening on port 3333')
})