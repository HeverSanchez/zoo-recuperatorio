# Zoo

En el zoo vamos a tener que crear (animales, cuidadores, preferencia alimento).
Este proyecto podemos hacerlo con express generator, cada vista que se detalla a continuacion tendra su ruta en un archivo *router* así como también su *controlador* para procesar los datos que se requieren.
Se implementara multer para las imagenes. 
Las vistas no tienen que ser complejas, podrian usar bootstrap.

### Vistas
* Crear-------------------------------------------------------------------------------
    * animal
    * prefereciaAlimento
    * cuidador
* index-------------------------------------------------------------------------------
    * animal con el nombre de *prefereciaAlimento* y *cuidador*-----------------------
    * prefereciaAlimento
    * cuidador
* detail------------------------------------------------------------------------------
    * animal
    * preferenciaAlimento
    * cuidador

### Sequelize y DB
Los campos para *animales* van a ser:-------------------------------------------------
- nombre------------------------------------------------------------------------------
- altura------------------------------------------------------------------------------
- peso--------------------------------------------------------------------------------
- preferenciaAlimento (foreign_key)---------------------------------------------------
- foto--------------------------------------------------------------------------------

Los campos para *cuidadores* van a ser:-----------------------------------------------
- nombre------------------------------------------------------------------------------
- apellido----------------------------------------------------------------------------
- avatar------------------------------------------------------------------------------

Los campos para *preferenciaAlimento* van a ser:--------------------------------------
- nombre (herviviro, carnivoro, omnivoros)--------------------------------------------

>Un animal puede tener mucho cuidadores y viceversa:----------------------------------
- 1 animal - m cuidadores-------------------------------------------------------------
- 1 cuidador - m animales-------------------------------------------------------------

>Un animal pertenece a un preferenciaAlimento (herviviro, carnivoro, omnivoros)-------
- 1 animal - 1 preferenciaAlimento----------------------------------------------------
- 1 preferenciaAlimento - m animales--------------------------------------------------




++++++++++++++++    index.ejs   +++++++++++++++++++++++++

<% for (let i = 0; i < animales??????????length; i++) { %> -->
            <li><%=animales????????%></li>
          <% } %>

+++++++++++++++++++++++++++++++++++++++++++++++++++++++