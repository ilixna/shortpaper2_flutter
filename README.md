# ShortPaper2_Flutter

[![made-with-dart](https://img.shields.io/badge/Made%20with-Dart-1f425f.svg)](https://dart.dev/) [![made-with-dart](https://img.shields.io/badge/Made%20with-Flutter-1f425f.svg)](https://flutter.dev/)  


## 馃敯Integrantes y Commits

| Integrantes | Nombre en Github | Tareas realizadas | T铆tulo de los Commits mas importantes | Descripciones de los Commits |
| ------------| ---------------- | ------------------| ----------------------- | ---------------------------- |
| Cumares, Diego | CRONOXT |  <p>掳Creaci贸n de las clases Genero y EstadoDoctor. </p><p>掳Creaci贸n de la clase Widget card. | <p>1.- Se creo doctor_estado. </p><p> 2.- Se creo el witget de card. | <p>1.- Estado doctor se encarga de llamar a las clases del request y con esos metodos notificar el cambio en el array de doctores. </p><p> 2.- El widget de card muestra todos los datos del doctor y sus especialidadades, junto a una peque帽a imagen. </p> |
| Dias, Iliana | ilixna | <p>掳Creaci贸n de las clases Doctor,  DoctoresRequest y CardModelo. </p><p>掳Creaci贸n de las clase abstracta BusquedaGenerica.</p>掳Creaci贸n de las clase Widget Expansion. | <p>1.- Se agreg贸 la clase modelo doctor. </p>2.- Se crearon las clases abstract_doctores_request y doctores_request. | <p>1.- Se creo la clase modelo doctor para permitir definir los atributos que contendra un doctor dentro la vista. </p>2.- Se creo la clase abstracta BusquedaGenerica <T, S> y la clase DoctoresRequest con el proposito de recoger la data desde el servicio para su manipulaci贸n dentro de la vista. |
| Gavidia, Franco | SARKOT07 |<p>掳Creaci贸n de las clases Especialidad y ExpansionModelo.</p><p>掳Creaci贸n de la clase Widget BarraBusqueda/_BarraBusquedaState.</p>掳Creaci贸n de la ListaDoctores(Vista en la simulaci贸n). | <p>1.- Se creo el widget de la barra de busqueda. </p><p>2.- Se termino la pantalla completa de la app. </p> | <p>1.- Se creo el widget de la barra de busqueda, donde contiene su dise帽o y la l贸gica para el funcionamiento del Widget. </p><p>2.- Se completo la pantalla de la app, y ya se puede hacer la simulaci贸n.|

## 馃搼Pre-requisitos
- [Flutter](https://flutter.dev/) - Descargar la versi贸n 2.10.5
- [Dart](https://dart.dev/) - Lenguaje de programaci贸n
 
## 馃搶Instalaci贸n

Para instalar [Dart](https://dart.dev/) haciendo uso de choco (chocolatey) 贸 desde el Android Studio

```
choco install dart-sdk
```

Procedemos a clonar el repositorio

```
git clone https://github.com/ilixna/shortpaper2_flutter.git
```

Instalamos los m贸dulos necesarios

```
flutter pub get
```
## 鈿欙笍Ejecutar Simulaci贸n

Para iniciar la simulaci贸n localmente, siga las instrucciones que se especifican a continuaci贸n:

1. Si no funciona correctamente la simulaci贸n, se puede cambiar el path Dart SDK.
2. Antes de simular de proyecto, se debe iniciar el servicio:
```
https://github.com/ilixna/ShortPaper2_NestJS.git
```
3. Desde el ambiente elegido, emular el celular y compilar el proyecto.


## 馃寧Colaboladores

- **Diego Cumares** - [CRONOXT](https://github.com/CRONOXT)
- **Iliana Dias** - [ilixna](https://github.com/ilixna)
- **Franco Gavidia** - [SARKOT07](https://github.com/SARKOT07)