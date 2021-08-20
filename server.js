const express = require('express')
const app = express()
const path = require('path')

const port = 3000

app.use('/', (req, res) => {
  res.set('Cross-Origin-Embedder-Policy', 'require-corp')
  res.set('Cross-Origin-Opener-Policy', 'same-origin')

  console.log("Getting", req.path)
  res.sendFile(path.join(__dirname,  req.path))
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})