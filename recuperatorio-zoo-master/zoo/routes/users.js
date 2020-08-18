var express = require('express');
var router = express.Router();
let userController = require('../controllers/userController')
let multer = require('multer');
let path = require('path');

var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, 'tmp/my-uploads')
  },
  filename: function (req, file, cb) {
    cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname))
  }
})
 
var upload = multer({ storage: storage })

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.get('/crear', userController.crear);
router.get('/detail', userController.detail);
router.get('/detail/:id', userController.detailxid);
router.get('/delete/:id', userController.delete);


router.get('/crearanimal', userController.crearAnimal);
router.post('/crearanimal', upload.any(), userController.crearAnimalNuevo);

// router.get('/crearcuidador', userController.crearCuidador);
// router.post('/crearcuidador', upload.any(), userController.crearCuidadorNuevo);




module.exports = router;
