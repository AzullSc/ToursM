-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2014 a las 05:15:35
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alertas`
--

CREATE TABLE IF NOT EXISTS `alertas` (
`idalerta` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `idmodulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `alertas`
--

INSERT INTO `alertas` (`idalerta`, `descripcion`, `idmodulo`, `cantidad`) VALUES
(1, 'Prestamo vencido', 22, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
`Articulo_ID` int(11) NOT NULL,
  `Articulo` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`Articulo_ID`, `Articulo`, `Estado`) VALUES
(1, 'La Ceguera del Banner y Cómo Curarla', '1'),
(2, 'Redactar emails que se abren, se leen y se clican (Parte 1)', '1'),
(3, 'Head maps. Caliente, caliente', '1'),
(4, 'Las nuevas tecnologías que ayudan a las metodologías de los docentes en las nuevas escuelas.', '1'),
(5, '¿Hay que comprar acciones de Facebook?', '1'),
(6, '50 maneras de estimular el poder de tu cerebro', '1'),
(7, 'Las 5 mejores tablets Android del 2013', '1'),
(8, '6 lecciones de liderazgo de Napoleón Bonaparte', '1'),
(9, '¿Por que abrimos perfiles en Redes Sociales?', '1'),
(10, 'Cuando las tecnologias juegan en nuestra contra', '1'),
(11, 'La evaluación del debate', '1'),
(12, 'Internet: la mayor aula que jamas hemos tenido', '1'),
(13, 'azzzzzzzzzzzzzzzzzzzzqqqqqqqqq', '0'),
(14, 'El calentamiento Global en la antartica', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

CREATE TABLE IF NOT EXISTS `asesor` (
`Asesor_ID` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `DNI` int(11) NOT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Curso_ID` int(6) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `asesor`
--

INSERT INTO `asesor` (`Asesor_ID`, `Nombre`, `Apellido`, `DNI`, `Direccion`, `Telefono`, `Curso_ID`, `Estado`) VALUES
(1, 'Alfonso', 'Grandez Tenazoa', 56783452, 'jr. Bolognesi N° 456', '978655345', 8, '0'),
(2, 'Juan Antonio', 'Adrow Sal', 90123456, 'jr. Leticia nº 502', '908792345', 8, '1'),
(3, 'Pablo ', 'Perez Diaz', 70827239, 'Jr. Alfonso Ugarte', '973763278', 17, '1'),
(4, 'Terrones Campos', '70823827', 78746389, '972367823', '78364777', 17, '0'),
(12, 'lady', 'wudyejd', 7648476, 'njsyjsk', '987897656', 9, '1'),
(11, '9', 'erdgdrg', 0, '2345678', 'fghjj', 9876543, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
`Autor_ID` int(11) NOT NULL,
  `Tipo_Autor_ID` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Pais` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Fechanacimiento` date NOT NULL,
  `Sexo` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Paginaweb` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`Autor_ID`, `Tipo_Autor_ID`, `Nombre`, `Apellido`, `Pais`, `Fechanacimiento`, `Sexo`, `Email`, `Paginaweb`, `Estado`) VALUES
(1, 0, '', '', '', '0000-00-00', '', '', '', '0'),
(2, 0, '', '', '', '0000-00-00', '', '', '', '0'),
(3, 0, '', '', '', '0000-00-00', '', '', '', '0'),
(4, 0, 'sfkñlkl', 'kljklj', 'jkjlk', '0000-00-00', 'k', 'jlk', 'jkjkjl', '1'),
(5, 1, 'ijikj', 'jbjbn', 'njbjnj', '0000-00-00', 'o', 'jbjnb', 'jnjnk', '1'),
(6, 2, 'jnij', 'jio', 'iji', '2014-02-04', 'o', 'jnij', 'mojo', '0'),
(7, 2, 'Maribel', 'Alvarado', 'Chile', '2014-02-21', 'o', 'maribel@gmail.com', 'http://192.168.1.41/biblioteca/autor', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorarticulo`
--

CREATE TABLE IF NOT EXISTS `autorarticulo` (
  `Autor_ID` int(11) NOT NULL,
  `Articulo_ID` int(11) NOT NULL,
  `NumAutores` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorlibro`
--

CREATE TABLE IF NOT EXISTS `autorlibro` (
  `Libro_ID` int(11) NOT NULL,
  `Autor_ID` int(11) NOT NULL,
  `NumAutores` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autormonografia`
--

CREATE TABLE IF NOT EXISTS `autormonografia` (
  `Monografia_ID` int(11) NOT NULL,
  `Autor_ID` int(11) NOT NULL,
  `NumAutores` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bibliotecario`
--

CREATE TABLE IF NOT EXISTS `bibliotecario` (
`bibliotecario_ID` int(6) NOT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `clave` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(11) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `dni` varchar(8) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ultimoingreso` datetime DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `bibliotecario`
--

INSERT INTO `bibliotecario` (`bibliotecario_ID`, `id_perfil`, `nombre`, `apellido`, `usuario`, `clave`, `telefono`, `direccion`, `dni`, `ultimoingreso`, `estado`) VALUES
(1, 1, 'Alexandra', 'Lozano', 'admin', '123', '435467898', 'en la alexa', '76876545', '0000-00-00 00:00:00', '1'),
(7, 1, 'Pablo', 'Lopez ', 'admin', '123', '01023678', '947986504', 'Jr. Lima', '2014-02-18 00:00:00', ''),
(8, 2, 'Alex', 'Lopez', 'admin', '1234', '987485848', 'Jr. Lima', '89096754', '0000-00-00 00:00:00', '1'),
(9, 1, 'Roberto', 'Cusma Valle', 'admin', '12345', '78903456', 'jr. amorarca', '02873484', '0000-00-00 00:00:00', '1'),
(10, 0, 'Galdoz', 'galdoz', '12345', '980567890', 'jr. Huga Ch', '67890567', '', '0000-00-00 00:00:00', '0'),
(11, 0, 'lady', 'paola', '123', '', '', '12345678', '', '0000-00-00 00:00:00', '0'),
(12, 0, 'fggff', 'tantalean hererra', '12345', '455678', 'jifjd', '45757877', '32244324', '0000-00-00 00:00:00', '0'),
(13, 1, 'thaliaeeee', 'tantalean', 'admin', '123', '973876464', 'jr. lima', '8793364', '0000-00-00 00:00:00', '0'),
(14, 2, 'Yoel', 'Perez Tangoa', 'Yoel', '123', '123456789', 'Jr. Piura', '12345678', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
`Categoria_ID` int(11) NOT NULL,
  `Categoria` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`Categoria_ID`, `Categoria`, `Estado`) VALUES
(1, 'Informativo', '1'),
(2, 'Literario', '1'),
(3, 'Cientifico', '1'),
(4, 'axxxxxxxxxqqqqqqqqqqq', '0'),
(5, 'cuentasos', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_lector`
--

CREATE TABLE IF NOT EXISTS `categoria_lector` (
`Categoria_Lector_ID` int(11) NOT NULL,
  `Descripcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `categoria_lector`
--

INSERT INTO `categoria_lector` (`Categoria_Lector_ID`, `Descripcion`, `Estado`) VALUES
(1, 'Interno', '1'),
(4, 'wwwwwwwwwwwwwwwwwwww', '0'),
(3, 'Externo', '1'),
(5, 'superiors', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase_laminamapa`
--

CREATE TABLE IF NOT EXISTS `clase_laminamapa` (
`Clase_LaminaMapa_ID` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `clase_laminamapa`
--

INSERT INTO `clase_laminamapa` (`Clase_LaminaMapa_ID`, `Descripcion`, `Estado`) VALUES
(16, 'Laminas Educativas', '1'),
(17, 'Laminas Infantiles', '1'),
(5, 'Mapa Fisico', '1'),
(6, 'Mapa Politico', '1'),
(7, 'Mapa Climatico', '1'),
(8, 'Mapa Geologico', '1'),
(9, 'Mapa Economico', '1'),
(10, 'Mapa Urbano', '1'),
(11, 'Mapa Topografico', '1'),
(12, 'Mapa Administrativo', '1'),
(13, 'Mapa Analitico', '1'),
(14, 'Mapa Catastral', '1'),
(15, 'Mapa Actual', '1'),
(18, 'ddsdscccccccccccc', '0'),
(19, 'aassqqqqqqqqq', '0'),
(20, 'Mapas Humanistico', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase_revista`
--

CREATE TABLE IF NOT EXISTS `clase_revista` (
`Clase_Revista_ID` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `clase_revista`
--

INSERT INTO `clase_revista` (`Clase_Revista_ID`, `Descripcion`, `Estado`) VALUES
(1, 'Informativas', '1'),
(2, 'Especializadas', '1'),
(3, 'Ocio', '1'),
(4, 'Cientificas', '1'),
(5, 'dddfdfcsddccc', '0'),
(6, 'Educativa', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
`idcliente` int(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `doc` varchar(11) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `apellido`, `doc`, `telefono`, `direccion`, `email`, `estado`) VALUES
(1, 'jino luis', 'alva cueva', '71689982', '947567846', 'jr. alfinso ugrate', 'jinoalcu@hotmail.com', '1'),
(2, 'jose', 'arando', '78936537', '987654321', '935467589', 'jinoalcu@hotmail.com', '1'),
(3, '', '', '', '', '', '', '0'),
(4, '', '', '', '', '', '', '0'),
(5, 'juan', 'rios', '98976787', 'los olivos', '987657897', 'jinoalcu@hotmail.com', '1'),
(6, 'juan', 'rios', '3857898', 'lod', '987654321345', 'ijoi', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
`Curso_ID` int(11) NOT NULL,
  `Curso` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Curso_ID`, `Curso`, `Estado`) VALUES
(2, 'Lenguaje y Comunicación', '1'),
(18, 'Tecnologia Ambiental', '0'),
(17, 'Religión', '1'),
(16, 'Física', '1'),
(8, 'Lógico Matemático', '1'),
(9, 'Ingles', '1'),
(10, 'Historia y Geografía', '1'),
(11, 'Química', '1'),
(12, 'Educación Cívica', '1'),
(13, 'Ciencia Tecnología y Ambiente', '1'),
(14, 'Educación Física', '1'),
(15, 'Computación', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE IF NOT EXISTS `editorial` (
`Editorial_ID` int(11) NOT NULL,
  `Editorial` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`Editorial_ID`, `Editorial`, `Estado`) VALUES
(1, 'Grandes Libros', '0'),
(2, 'Ediciones Corefo Sac', '1'),
(3, 'Quad Graphics', '1'),
(4, 'Lumbreras Editores', '1'),
(5, 'Editorial San Marcos', '1'),
(6, 'Santillana S.A', '1'),
(7, 'Editorial Hilder S.A.C', '1'),
(8, 'Librotext', '0'),
(9, 'Grupo Editorial Norma', '1'),
(10, 'Editorial Elefante', '1'),
(11, 'Corporacion Editora Chirre S.A.C', '1'),
(12, 'Editorial Planeta', '1'),
(13, 'Tierra Firme Ediciones S.A.C', '1'),
(14, 'Editorial Maria Trinidad', '1'),
(15, 'Librotext', '1'),
(16, 'Grandes Libros', '1'),
(17, 'Navarretes', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar_laminamapa`
--

CREATE TABLE IF NOT EXISTS `ejemplar_laminamapa` (
`Ejemplar_LaminaMapa_ID` int(11) NOT NULL,
  `LaminaMapa_ID` int(11) NOT NULL,
  `Ubicacion_ID` int(11) NOT NULL,
  `Lugaredicion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Anioedicion` int(10) NOT NULL,
  `Fechaingreso` date NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `ejemplar_laminamapa`
--

INSERT INTO `ejemplar_laminamapa` (`Ejemplar_LaminaMapa_ID`, `LaminaMapa_ID`, `Ubicacion_ID`, `Lugaredicion`, `Anioedicion`, `Fechaingreso`, `Estado`) VALUES
(1, 2, 0, 'hgh', 2003, '0000-00-00', '0'),
(2, 3, 0, 'hvfuifufggggggggh', 5678, '0002-12-04', '0'),
(3, 2, 0, 'Paraguay', 2012, '2014-02-01', '1'),
(4, 4, 0, 'Argentina', 2013, '2014-02-04', '1'),
(5, 1, 0, 'Tarapoto', 2000, '2014-02-19', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar_libro`
--

CREATE TABLE IF NOT EXISTS `ejemplar_libro` (
`Ejemplar_Libro_ID` int(11) NOT NULL,
  `Libro_ID` int(11) NOT NULL,
  `Numpagina` int(11) NOT NULL,
  `ISBN` varchar(13) COLLATE utf8_spanish_ci NOT NULL,
  `Numedicion` int(11) NOT NULL,
  `Fehaingreso` date NOT NULL,
  `Fechapublicacion` date NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `ejemplar_libro`
--

INSERT INTO `ejemplar_libro` (`Ejemplar_Libro_ID`, `Libro_ID`, `Numpagina`, `ISBN`, `Numedicion`, `Fehaingreso`, `Fechapublicacion`, `Estado`) VALUES
(1, 0, 0, '0', 0, '0000-00-00', '0000-00-00', '1'),
(2, 0, 0, '0', 0, '0000-00-00', '0000-00-00', '1'),
(3, 2, 0, '2147483647', 5, '0000-00-00', '0000-00-00', '0'),
(4, 6, 34512345, '98000657', 345, '2014-02-14', '2014-02-20', '1'),
(5, 5, 2147483647, '654', 5, '2000-07-23', '0000-09-15', '1'),
(6, 2, 2147483647, '2147483647', 6, '0000-00-00', '0001-01-00', '0'),
(7, 6, 12345678, '564', 5, '2014-02-03', '2014-02-01', '1'),
(8, 2, 456, '5643567898765', 5, '2014-02-07', '2014-02-19', '1'),
(9, 0, 123, '', 0, '0000-00-00', '0000-00-00', '1'),
(10, 1, 250, '2879765438985', 36, '2014-02-07', '2014-02-03', '1'),
(11, 3, 450, '4876567854367', 5, '2014-02-01', '2013-12-06', '0'),
(12, 3, 500, '5787698737376', 2, '2013-11-12', '2012-10-16', '1'),
(27, 5, 285, '9654567897657', 5, '2013-11-13', '2012-12-11', '1'),
(26, 5, 260, '4798765445678', 4, '2013-11-12', '2013-03-12', '1'),
(25, 6, 300, '3456789087654', 2, '2013-11-11', '2012-04-10', '1'),
(24, 7, 300, '3456789987654', 2, '2014-02-06', '2013-12-11', '1'),
(23, 7, 230, '7262737232690', 7, '2014-01-06', '2013-04-18', '1'),
(22, 7, 200, '8278367632787', 5, '2013-12-25', '2013-11-12', '1'),
(21, 3, 640, '8728901635289', 3, '2014-02-03', '2011-08-18', '1'),
(28, 2, 456, '5678976', 5, '2014-02-24', '2014-02-01', '1'),
(29, 3, 456, '2343567', 4, '2014-02-24', '2014-02-03', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar_monografia`
--

CREATE TABLE IF NOT EXISTS `ejemplar_monografia` (
`Ejemplar_Monografia_ID` int(11) NOT NULL,
  `Monografia_ID` int(11) NOT NULL,
  `Fechaingreso` date NOT NULL,
  `Fechapublicacion` date NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `ejemplar_monografia`
--

INSERT INTO `ejemplar_monografia` (`Ejemplar_Monografia_ID`, `Monografia_ID`, `Fechaingreso`, `Fechapublicacion`, `Estado`) VALUES
(1, 1, '2014-02-24', '2014-02-11', '1'),
(2, 1, '2014-02-24', '2014-02-19', '1'),
(3, 1, '2014-02-05', '2014-02-06', '1'),
(4, 1, '2014-02-24', '2014-02-24', '1'),
(5, 1, '2014-02-24', '2014-02-24', '1'),
(6, 4, '2014-02-24', '2014-02-05', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar_revista`
--

CREATE TABLE IF NOT EXISTS `ejemplar_revista` (
`Ejemplar_Revista_ID` int(11) NOT NULL,
  `Revista_ID` int(11) NOT NULL,
  `ISNN` varchar(13) COLLATE utf8_spanish_ci NOT NULL,
  `Anioinicio` int(11) NOT NULL,
  `aniofin` int(11) NOT NULL,
  `ISNNrelacionado` varchar(13) COLLATE utf8_spanish_ci NOT NULL,
  `Volumen` int(11) NOT NULL,
  `Numedicion` int(11) NOT NULL,
  `Fechaingreso` date NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `ejemplar_revista`
--

INSERT INTO `ejemplar_revista` (`Ejemplar_Revista_ID`, `Revista_ID`, `ISNN`, `Anioinicio`, `aniofin`, `ISNNrelacionado`, `Volumen`, `Numedicion`, `Fechaingreso`, `Estado`) VALUES
(1, 2345678, '2000', 0, 0, '3', 34, 2014, '0000-00-00', '1'),
(2, 0, '3456788', 0, 0, '3456787', 3, 6, '2014-02-04', '1'),
(3, 1, '5465678', 0, 0, '2345345', 4, 344, '2014-02-12', '0'),
(4, 1, '3465789', 0, 0, '3457687', 3, 4, '2014-02-05', '1'),
(5, 2, '3243567', 0, 0, '4324345', 4, 2, '2014-02-01', '1'),
(6, 2, '2786475', 2000, 2000, '278657', 1, 2, '2014-02-13', '1'),
(7, 1, '1245896', 2012, 2013, '2154789', 2, 2, '2014-02-20', '1'),
(8, 2, '8742136', 2011, 2012, '8512479', 5, 6, '2014-02-06', '1'),
(9, 1, '8452139', 2013, 2014, '84213659', 3, 6, '2014-02-27', '1'),
(10, 2, '4521389', 2014, 2014, '8521346', 6, 1, '2014-02-21', '1'),
(11, 1, '4215893', 2013, 2014, '452139', 5, 2, '2014-02-14', '1'),
(12, 2, '8521369', 2012, 2013, '451239', 2, 6, '2014-02-14', '1'),
(13, 2, '8521369', 2012, 2013, '451239', 2, 6, '2014-02-14', '1'),
(14, 5, '2455856', 2014, 2014, '1245789', 3, 3, '2014-02-20', '1'),
(15, 5, '2455856', 2014, 2014, '1245789', 3, 3, '2014-02-20', '1'),
(16, 4, '5214896', 2012, 2013, '2134589', 5, 6, '2014-02-21', '1'),
(17, 4, '5214896', 2012, 2013, '2134589', 5, 6, '2014-02-21', '1'),
(18, 4, '5214896', 2012, 2013, '2134589', 5, 6, '2014-02-21', '1'),
(19, 3, '12483157', 2012, 2014, '1245863', 3, 25, '2014-02-22', '1'),
(20, 3, '12483157', 2012, 2014, '1245863', 3, 25, '2014-02-22', '1'),
(21, 3, '12483157', 2012, 2014, '1245863', 3, 5, '2014-02-22', '1'),
(22, 3, '12483157', 2012, 2014, '1245863', 3, 5, '2014-02-22', '1'),
(23, 3, '12483157', 2012, 2014, '1245863', 3, 5, '2014-02-22', '1'),
(24, 1, '2398576', 2000, 2001, '4787654', 4, 2, '2014-02-18', '1'),
(25, 4, '6763567', 2000, 2001, '3657645', 3, 4, '2014-02-11', '1'),
(26, 5, '8769874', 2000, 2001, '4574356', 3, 2, '2014-02-18', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
`idempleado` int(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dni` varchar(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idempleado`, `nombre`, `apellidos`, `dni`, `direccion`, `telefono`, `email`, `estado`) VALUES
(1, 'jose', 'rios', '3456789', 'kackooo', '345678', 'jinluao@gmail.com', '0'),
(2, 'jose', 'laya', '4567890', 'dfghjkl', '567890', 'jinoalcu@hotmail.com', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE IF NOT EXISTS `grado` (
`Grado_ID` int(11) NOT NULL,
  `Grado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`Grado_ID`, `Grado`, `Estado`) VALUES
(1, 'cuarto', '0'),
(2, 'Primero de Primaria', '1'),
(3, 'segundo', '0'),
(4, 'Tercero de Primaria', '1'),
(5, 'Segundo', '0'),
(6, 'Cuarto de Primaria', '1'),
(7, 'Quinto de Primaria', '1'),
(8, 'Sexto de Primaria', '1'),
(9, 'Inicial', '0'),
(10, 'Segundo de Primaria', '1'),
(11, 'Quinto de Secundaria', '1'),
(12, 'Primero de Secundaria', '1'),
(13, 'Secundaria de Secundaria', '1'),
(14, 'Tercero de Secundaria', '1'),
(15, 'Cuarto de Secundaria', '1'),
(16, 'Inicial', '1'),
(17, 'Superior', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laminamapa`
--

CREATE TABLE IF NOT EXISTS `laminamapa` (
`LaminaMapa_ID` int(11) NOT NULL,
  `Clase_LaminaMapa_ID` int(11) NOT NULL,
  `Titulo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `laminamapa`
--

INSERT INTO `laminamapa` (`LaminaMapa_ID`, `Clase_LaminaMapa_ID`, `Titulo`, `Descripcion`, `Estado`) VALUES
(1, 16, 'La Juventud', 'Es la edad que se sitúa entre la infancia y la edad adulta', '1'),
(2, 16, 'Los Simbolos Patrios', 'Son aquellos que representan a estados, naciones y países', '1'),
(3, 5, 'Mapa de America', 'Es una región del continente americano que se define como el conjunto de países', '1'),
(4, 7, 'Climas del Peru', 'El Perú es un país de clima muy variado por la influencia de fenómenos', '1'),
(5, 6, 'Mapa de Africa', 'África es el continente más grande del mundo y el segundo continente mas poblado del mundo', '1'),
(6, 17, 'xxxxxxcc', 'xzxzxddddddddddddddddddddddd', '0'),
(7, 13, 'Lugares turisticos', 'Informacion detallada de los lugares turisticos del peru', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laminamapamovimiento`
--

CREATE TABLE IF NOT EXISTS `laminamapamovimiento` (
  `Movimiento_ID` int(11) NOT NULL,
  `Ejemplar_LaminaMapa_ID` int(11) NOT NULL,
  `Numejemplar` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lector`
--

CREATE TABLE IF NOT EXISTS `lector` (
`Lector_ID` int(11) NOT NULL,
  `Grado_ID` int(11) NOT NULL,
  `Tipo_Lector_ID` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_paterno` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_materno` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `DNI` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Sexo` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `lector`
--

INSERT INTO `lector` (`Lector_ID`, `Grado_ID`, `Tipo_Lector_ID`, `Nombre`, `Apellido_paterno`, `Apellido_materno`, `DNI`, `Fecha_nacimiento`, `Sexo`, `Direccion`, `Telefono`, `Email`, `Estado`) VALUES
(1, 1, 1, 'Jose Martin', 'Velanova', 'Gonzales', '12457896', '1994-02-08', '', 'JR. Pueblo Joven', '12457896', 'jose@gmail.com', '1'),
(2, 0, 3, 'Paola ', 'Sandoval ', 'Mondragon', '12458963', '0002-07-01', '', 'Jr. Miguel Grauo', '4258963', 'paola@hotmail.com', '1'),
(3, 0, 4, 'Abdiel Salvador', 'Arcos', 'Alvares', '1245874', '1991-12-03', '', 'Jr. Las Amebas', '425896123', 'Abdiel@outlook.es', '1'),
(4, 0, 2, 'Maria', 'Loredo ', 'Mendez', '47896421', '0000-00-00', '', 'Jr. Satelite', '425896318', 'Maria@gmail.com', '1'),
(5, 4, 1, 'Flor', 'Violeta', 'Milian', '4258963', '0000-00-00', '', 'Jr. Piura', '425896312', 'flor@hotmail.com', '1'),
(6, 0, 2, ' Margarita', 'Soto', 'Suarez ', '4528963', '2005-02-27', '', 'Jr. La Molina 5214', '45896214', 'margarita@outlook.es', '1'),
(7, 0, 0, 'Israel', 'Vazquez', 'Juarez', '45896214', '1992-07-12', '', 'Jr. Monterrey 4256', '425874136', 'israel@gmail.com', '1'),
(8, 0, 3, 'Rocio ', 'Rimarachin', 'Zamora', '4258968', '1086-02-01', '', 'Jr. Los Olivos', '457893258', 'rocio@gmail.com', '1'),
(9, 0, 4, 'Kevin', 'Rojas', 'Tello', '45823476', '1991-02-28', '', 'Jr. Santa Rosa', '785126945', 'Kevin@hotmail.com', '1'),
(10, 0, 4, 'Lesly', 'Villa', 'Frias', '42158963', '1990-08-03', '', 'Jr. Santa Isabel', '42589631', 'Isabel@gmail.com', '1'),
(11, 7, 1, 'Merarit', 'Alvarado', 'Alejandria', '8523659', '1992-06-03', '', 'Jr. Los Olivos 155', '421589363', 'merarit@hotmail.com', '1'),
(12, 6, 1, 'Yanali', 'Perez', 'Altamirano', '84521369', '1994-02-05', '', 'Jr. Monterrey', '845213698', 'yanali@hotmail.com', '1'),
(13, 2, 1, 'Diany', 'Salazar ', 'Diaz', '84512369', '1991-12-20', '', 'Jr. Bolognesi', '421589632', 'dinay@gmail.com', '1'),
(14, 0, 2, 'Joneyva ', 'Fustamente', 'Perez', '84521360', '2014-02-05', '', 'Jr. Las Flores 512', '542178914', 'joneyva@hotmail.com', '1'),
(15, 0, 2, 'Frank', 'Izapilllo', 'Mondragon', '1247154', '2014-02-05', '', 'Jr. Orellana 1245', '845236451', 'frank@hotmail.com', '1'),
(16, 0, 4, 'Mario', 'Gomez', 'Rojas', '84216753', '2014-02-04', '', 'Jr. Arturo', '8452136985', 'mario@gmail.com', '1'),
(17, 0, 2, 'Jim Pol', ' Vega ', 'Sandoval', '85421369', '2014-02-06', '', 'Jr. Las amebas', '215471398', 'jim@gmail.com', '1'),
(18, 0, 2, 'Robin', 'Mondragon', 'Diaz', '85123694', '2014-02-05', '', 'Jr. Union 521', '742158963', 'robin@hotmail.com', '1'),
(19, 2, 1, 'Jenifer', 'Salzar', 'Mondragon', '85125458', '2010-02-26', '', 'banda de shilcayo', '852134596', 'jenifer@gmail.com', '1'),
(20, 0, 2, 'Rider', 'Pavarotti', 'Davila', '51247896', '2014-02-11', '', 'Jr. circunvalacion 5651', '784213589', 'rider@hotmail.com', '1'),
(21, 2, 3, 'Pepito', 'Lopez', 'Urbina', '12458976', '0002-05-04', '', 'Jr. Las Flores', '123546789', 'pepe@hotmail.com', '0'),
(22, 4, 1, 'Rosa', 'Dias', 'Perez', '09093248', '2013-06-18', '', 'Jr. Lima', '973648438', 'rosa_4@hotmail.com', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE IF NOT EXISTS `libro` (
`Libro_ID` int(11) NOT NULL,
  `Tipo_Libro_ID` int(11) NOT NULL,
  `Editorial` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Autor` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Idioma` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Titulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Resumen` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `Pais` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`Libro_ID`, `Tipo_Libro_ID`, `Editorial`, `Autor`, `Idioma`, `Titulo`, `Resumen`, `Pais`, `Ciudad`, `Estado`) VALUES
(1, 1, '4', 'Lewis Carroll', '', 'Alicia en el Pais de las Maravillas', 'Capítulo 1: En la conejera. \r\nAlicia se encontraba en su jardín con su hermana, cuando vé pasar un conejo Blanco. Alicia lo sigue, se mete en la madriguera y cae en un túnel que parecía interminable. Cae en un manto lleno de puertas y según lo que tocará o beba allí aumenta como disminuye su tamaño. Intenta tomar diferentes para penetrar por una pequeña puerta que daba a un hermoso jardín. \r\n\r\nCapítulo 2: El estanque de las lágrimas. \r\nNo logrando su cometido (pasar por la puerta) se pone a llorar, y como su tamaño era enorme, en poco tiempo, se forma un estanque con sus lágrimas. Luego, al empequeñeser, nada hasta la orilla y se reúne con un ratón y una serie de animales. Para secarse, hace una carrera de revoltijo. ', 'Peru', 'Lima', '0'),
(2, 1, '4', 'Mario Vargas Llosa', 'Español', 'La ciudad y los perros', 'Comienza con el robo de un examen de química el cual va a ser tomado días después, este es extraído por el cadete Cava, alumno venido de la sierra quien es vigoroso y osado. Este fue ordenado por el círculo, agrupación que impone el lema y desorden entre los internos del Colegio Militar Leoncio Prado y del cual es líder.', 'Peru', 'Lima', '0'),
(3, 1, '7', 'Mario Vargas Llosa', 'Español', 'Los Jefes', 'LOS JEFES =&gt;Trata la historia de una huelga de estudiantes que se desarrolla en el colegio nacional de san miguel de Piura. Los estudiantes de secundaria exigen a través de la protesta un horario para presentar sus exámenes. Pero la huelga fracasa, ya que el director del colegio, después de las amenazas, logra imponer sus rígidas normas educativas.', 'Peru', 'Lima', '1'),
(4, 1, '13', 'Mario Vargas Llosa', 'Español', 'Pantaleon y La visitadoras', 'Pantaleón esta felizmente casado con Pochita cuando le llega su asenso a capitán. Se ha distinguido por su eficacia en la administración de los servicios domésticos de los cuarteles.\r\n\r\nCasi al mismo tiempo de su asenso recibe ordenes para organizar un nuevo servicio (domestico). Se le sugiere que para cumplir con esta misión debe vestirse de civil, aunque no debe dejar de pensar como militar.', 'Argentina', 'Buenos ires', '0'),
(5, 4, '12', 'Cesar Vallejo', 'Español', 'Los Heraldos Negros', 'Los heraldos negros se sitúa en una etapa relativamente temprana de la producción de Cesar Vallejo. De hecho, este poemario se presenta como una evolución, ya que varios poemas aparecen todavía marcados por la huella del modernismo y ceñidos bajo las formas métricas y estróficas clásicas, mientras que otros aparecen ya más cercanos al lenguaje personal del poeta y de formas más liberales. Algunos poemas son de vocación hacia lo nativo o indígena (la tierra y la gente), pero abarca también mucho de los temas que serán recurrentes en la obra del poeta: el destino del hombre, la muerte, el dolor, la conciencia de orfandad, el absurdo, la religión o la culpa, todos ellos tratados por el poeta con un acento muy personal, bajo una mirada cercana al existencialismo.', 'Peru ', 'Lima', '1'),
(6, 2, '6', 'Cesar Vallejo', 'Español', 'Rusia antes del segundo Quinquenal', 'Rusia ante el segundo plan quinquenal es un libro de crónicas y reportajes del escritor peruano César Vallejo cuya temática se centra en la Unión Soviética y su proceso revolucionario bajo el régimen stalinista. Es la continuación de &quot;Rusia en 1931. Reflexiones al pie del Kremlin&quot;, del mismo autor. Escrita rápidamente en 1931, ninguna editorial quiso publicarla en su momento. Sería publicada 34 años después por Georgette Vallejo, la viuda del escritor (Lima, Editorial Gráfica Labor, 1965).', 'Peru', 'Lima', '1'),
(7, 1, '6', 'Mark Nielsen / Shawn Miller', 'Español', 'Atlas de Anatomia Humana', 'Este atlas enseña la elegante estructura y diseño del cuerpo humano usando las herramientas y métodos del anatomista: disección y microscopio. Aunque hay numerosas y excelentes fuentes visuales que ilustran la anatomía, los autores están convencidos de que, a excepción del estudio personal mediante disecciones, unas detalladas fotografías tomadas de una buena disección y de preparaciones histológicas a través de microscopía son la forma más fidedigna de representar la anatomía en imágenes. Nada ilustra mejor lo real que aquello que es real. Por ello, el principal objetivo de esta obra es crear imágenes que enseñan y no un mero escaparate con una plétora de anatomía.', 'Argentina', 'Buenos Aires', '1'),
(8, 1, '2', 'rrr', 'rrrrrrrrrrrrrrrr', 'sxaaxsxsa', 'wdfefwe', 'axsxsxs', 'fffffffffffffff', '1'),
(9, 3, '4', 'SAnsy', 'quechua', 'Las Orquideas', 'Informacion descriptiva de los diferentes orquideas que existe en el Peru', 'Peru', '3', '1'),
(10, 2, '4', 'tyhftu', 'yjyuyt', 'yttytyt', 'i7titt7', 'ugit', '5', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libromovimineto`
--

CREATE TABLE IF NOT EXISTS `libromovimineto` (
  `Movimiento_ID` int(11) NOT NULL,
  `Ejemplar_Libro_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libromovimineto`
--

INSERT INTO `libromovimineto` (`Movimiento_ID`, `Ejemplar_Libro_ID`) VALUES
(25, 10),
(27, 3),
(28, 6),
(29, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
`Materia_ID` int(11) NOT NULL,
  `Categoria_ID` int(11) NOT NULL,
  `Materia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`Materia_ID`, `Categoria_ID`, `Materia`, `Estado`) VALUES
(1, 2, 'Obras Generales', '1'),
(2, 3, 'Filosofia y Psicologia', '1'),
(3, 1, 'Religion', '1'),
(4, 3, 'Ciencias Sociales', '1'),
(5, 2, 'Linguitica', '1'),
(6, 0, 'Ciencias Puras', '1'),
(7, 3, 'Ciencias Aplicadas', '1'),
(8, 1, 'Arte', '1'),
(9, 2, 'Literatura', '1'),
(10, 1, 'Geografia', '1'),
(11, 1, 'Referencia', '1'),
(12, 1, 'Material Didactico', '1'),
(13, 1, 'dssssssssssscaaaaaaaaa', '0'),
(14, 2, 'Deportes', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE IF NOT EXISTS `modulo` (
`id_modulo` int(6) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_modulopadre` int(6) DEFAULT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=74 ;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id_modulo`, `descripcion`, `url`, `id_modulopadre`, `estado`) VALUES
(1, 'Seguridad', '#', 0, '1'),
(2, 'Perfiles', 'perfiles', 1, '1'),
(3, 'Modulo', '#', 0, '0'),
(4, 'Permisos', 'permisos', 1, '1'),
(5, 'Modulos', 'modulo', 1, '1'),
(6, 'Catalogo', '#', 0, '0'),
(7, 'Categoria', 'categoria', 25, '0'),
(8, 'Tipo Lector', 'tipolector', 23, '0'),
(15, 'Reportes', '#', 0, '0'),
(16, 'Graficos', 'grafico', 15, '0'),
(19, 'Documento', 'documento', 15, '0'),
(21, 'Prestamo', '#', 0, '0'),
(22, 'Prestamo ', 'prestamo', 21, '0'),
(23, 'Lectores', '#', 0, '0'),
(25, 'Mantenimiento', '#', 0, '0'),
(26, 'Asesor', 'asesor', 25, '0'),
(27, 'Tipo Sancion', 'tiposancion', 25, '0'),
(28, 'Grado', 'grado', 25, '0'),
(29, 'Tipo Prestamo', 'tipoprestamo', 21, '0'),
(31, 'Categoria Lector', 'categorialector', 23, '0'),
(32, 'Tipo Movimiento', 'tipomovimiento', 25, '0'),
(33, 'Editorial', 'editorial', 25, '0'),
(34, 'Ubigeo', 'ubigeo', 25, '0'),
(35, 'Tipo Autor', 'tipoautor', 6, '0'),
(37, 'Clase Revista', 'claserevista', 6, '0'),
(38, 'Curso', 'curso', 25, '0'),
(39, 'Clase Lamina Mapa', 'claselaminamapa', 25, '0'),
(40, 'Tipo Lamina Mapa', 'tipolaminamapa', 25, '0'),
(41, 'Patrocinador', 'patrocinador', 25, '0'),
(42, 'Laminas Y Mapas', 'laminamapa', 6, '0'),
(43, 'Materia', 'materia', 6, '0'),
(44, 'Sancion', 'sancion', 21, '0'),
(45, 'Tipo Libro', 'tipolibro', 25, '0'),
(47, 'Lector', 'lector', 23, '0'),
(57, 'Bibliotecario', 'bibliotecario', 25, '1'),
(58, 'Articulo', 'articulo', 6, '0'),
(59, 'Monografia', 'monografia', 6, '0'),
(60, 'Autor', 'autor', 6, '0'),
(61, 'Ejemplar  de Lamina y Mapa', 'ejemplarlaminamapa', 6, '0'),
(62, 'Libro', 'libro', 6, '0'),
(65, 'Revista', 'revista', 6, '0'),
(67, 'Movimiento', 'movimiento', 25, '0'),
(68, 'Examen', '#', 0, '0'),
(69, 'Cientes', 'cliente', 68, '0'),
(70, 'Empleado', 'empleado', 68, '0'),
(71, 'Tipo de Producto', 'tipoproducto', 68, '0'),
(72, 'Producto', 'producto', 68, '0'),
(73, 'Tipo de Comprabante', 'tipocomprobante', 68, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monografia`
--

CREATE TABLE IF NOT EXISTS `monografia` (
`Monografia_ID` int(11) NOT NULL,
  `Curso_ID` int(11) NOT NULL,
  `Asesor_ID` int(11) NOT NULL,
  `Autor` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `monografia`
--

INSERT INTO `monografia` (`Monografia_ID`, `Curso_ID`, `Asesor_ID`, `Autor`, `Titulo`, `Estado`) VALUES
(1, 8, 2, 'thalia', 'Los integrales', '1'),
(2, 9, 2, 'the inglishs', '1', ''),
(3, 2, 3, 'juan', 'leches', '0'),
(4, 17, 3, 'Thalia', 'la ideologia religiosa', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monografiamovimiento`
--

CREATE TABLE IF NOT EXISTS `monografiamovimiento` (
  `Movimiento_ID` int(11) NOT NULL,
  `Ejemplar_Monografia_ID` int(11) NOT NULL,
  `Numejemplar` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE IF NOT EXISTS `movimiento` (
`Movimiento_ID` int(11) NOT NULL,
  `TipoMovimiento_ID` int(11) NOT NULL,
  `Movimiento` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`Movimiento_ID`, `TipoMovimiento_ID`, `Movimiento`, `Estado`) VALUES
(1, 1, 'vaca', '0'),
(2, 1, 'vvvvvvv', '0'),
(3, 1, 'ccccccc', '0'),
(4, 1, '', '0'),
(5, 1, 'jkjkjk', '0'),
(6, 1, 'sdfgth', '0'),
(7, 1, 'lokijh', '0'),
(8, 1, '', '0'),
(9, 1, '', '0'),
(10, 1, 'gb', '0'),
(11, 1, '', '0'),
(12, 1, '', '0'),
(13, 1, '', '0'),
(14, 1, '', '0'),
(15, 1, 'dd', '0'),
(16, 1, 'ddds', '0'),
(17, 1, 'aaaaa', '0'),
(18, 1, '', '0'),
(19, 1, '', '0'),
(20, 1, 'aaaqqqq', '0'),
(21, 1, '', '0'),
(22, 1, '', '0'),
(23, 1, '', '0'),
(24, 1, '', '0'),
(25, 1, 'ssssss', '0'),
(26, 1, 'ssssss', '0'),
(27, 2, 'deterioro', '1'),
(28, 2, 'malogrado', '1'),
(29, 2, 'mal estado', '0'),
(30, 2, 'Perdida', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinador`
--

CREATE TABLE IF NOT EXISTS `patrocinador` (
  `Patrocinador` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Tipodocumento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Documento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Paginaweb` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL,
`Patrocinador_ID` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `patrocinador`
--

INSERT INTO `patrocinador` (`Patrocinador`, `Tipodocumento`, `Documento`, `Telefono`, `Direccion`, `Email`, `Paginaweb`, `Estado`, `Patrocinador_ID`) VALUES
('Pancracia Alva Cueva', 'dni', '73567890', '956789012', 'jr. Los Robles nº 56', 'pancracia@hotmail.com', 'www.pancracia.com.pe', '1', 1),
('Luis Quispe Rojas', 'ruc', '74890987123', '942789089', 'jr. Amorarca nº 78', 'luchito@gmil.com', 'www.Luquiro.com.pe', '1', 2),
('Rogelio Tuesta Armas', 'dni', '78909876', '990007890', 'jr. Tumbes nº 89', 'rogetuarma@hotmail.com', 'www.Rotuar.com.pe', '1', 3),
('Loyda Armas Rojas', 'dni', '710989034', '942567891', 'jr. Cajamarca nº 98', 'loya@hotmail.com', 'www.loydaarmas.com.pe', '1', 4),
('Keila Vaca Ruiz', 'ruc', '70980123904', '980089756', 'jr. Leticia nº 502', 'ruizke@hotmail.com', 'www.keila.com.pe', '1', 5),
('Carlos Huaman Flores', 'ruc', '70980213458', '908976545', 'jr. Agusto B. Leguia nº 100', 'carloshuflo@hotmail.com', 'www.HuamanFloresCa.com.pe', '1', 6),
('Antonio Diaz Sanchez', 'ruc', '79098901234', '908790124', 'jr. Carlos Mariategui nº 90', 'antony@hotmail.com', 'www.AntonyDiaz.com.pe', '1', 7),
('Doria Bustamante Chamaya', 'dni', '90123907890', '907890456', 'jr. Sucre nº 67', 'dorita@hotmail.com', 'www.DoritaChamaya.edu.pe', '1', 8),
('Carol Yupanqui Tafur', 'dni', '70986789', '942789067', 'jr, America nº90', 'carolita@hotmail.com', 'www.Carolita.edu.pe', '1', 9),
('Judith Hurtado Ortiz', 'ruc', '78901239089', '942678908', 'jr. Cuzco nº23', 'judith@hotmail.com', 'HurtadOrtizJu.unms', '1', 10),
('Olenka', 'DNI', '12458963', '123456789', 'Jr. circunvalacion', 'olenka@hotmail.com', 'http://192.168.1.41/biblioteca/patrocinador', '0', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
`id_perfil` int(6) NOT NULL,
  `descripcion` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `descripcion`, `estado`) VALUES
(1, 'Administrador', '1'),
(2, 'Bibliotecario', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `id_perfil` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_perfil`, `id_modulo`) VALUES
(1, 4),
(1, 5),
(1, 8),
(1, 22),
(1, 26),
(1, 27),
(1, 7),
(1, 31),
(1, 33),
(1, 37),
(1, 38),
(1, 39),
(1, 16),
(1, 19),
(1, 43),
(1, 44),
(1, 45),
(1, 2),
(1, 47),
(1, 57),
(1, 58),
(1, 59),
(1, 62),
(1, 65),
(1, 32),
(1, 41),
(1, 67),
(1, 29),
(1, 40),
(1, 34),
(1, 28),
(1, 42),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE IF NOT EXISTS `prestamo` (
`Prestamo_ID` int(11) NOT NULL,
  `Tipo_Prestamo_ID` int(11) NOT NULL,
  `Lector_ID` int(11) NOT NULL,
  `Bibliotecario_ID` int(11) NOT NULL,
  `Fecha_prestamo` date NOT NULL,
  `Fecha_devolucion` date NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`Prestamo_ID`, `Tipo_Prestamo_ID`, `Lector_ID`, `Bibliotecario_ID`, `Fecha_prestamo`, `Fecha_devolucion`, `Estado`) VALUES
(1, 2, 5, 1, '2014-02-23', '2014-02-23', '0'),
(2, 3, 12, 1, '2014-02-23', '2014-02-24', '1'),
(3, 2, 13, 1, '2014-02-23', '2014-02-24', '1'),
(4, 2, 5, 1, '2014-02-23', '2014-02-27', '1'),
(5, 2, 11, 1, '2014-02-24', '2014-03-15', '0'),
(6, 3, 11, 1, '2014-02-24', '2014-02-28', '1'),
(7, 3, 12, 1, '2014-02-24', '2014-02-24', '1'),
(8, 2, 5, 1, '2014-02-24', '2014-02-26', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamolaminamapa`
--

CREATE TABLE IF NOT EXISTS `prestamolaminamapa` (
  `Prestamo_ID` int(11) NOT NULL,
  `Ejemplar_LaminaMapa_ID` int(11) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `prestamolaminamapa`
--

INSERT INTO `prestamolaminamapa` (`Prestamo_ID`, `Ejemplar_LaminaMapa_ID`, `Estado`) VALUES
(1, 1, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamolibro`
--

CREATE TABLE IF NOT EXISTS `prestamolibro` (
  `Prestamo_ID` int(11) NOT NULL,
  `Ejemplar_Libro_ID` int(11) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `prestamolibro`
--

INSERT INTO `prestamolibro` (`Prestamo_ID`, `Ejemplar_Libro_ID`, `Estado`) VALUES
(1, 3, '1'),
(2, 6, '1'),
(3, 11, '1'),
(4, 3, '1'),
(8, 10, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamomonografia`
--

CREATE TABLE IF NOT EXISTS `prestamomonografia` (
  `Ejemplar_Monografia_ID` int(11) NOT NULL,
  `Prestamo_ID` int(11) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `prestamomonografia`
--

INSERT INTO `prestamomonografia` (`Ejemplar_Monografia_ID`, `Prestamo_ID`, `Estado`) VALUES
(3, 5, '0'),
(6, 5, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamorevista`
--

CREATE TABLE IF NOT EXISTS `prestamorevista` (
  `Ejemplar_Revista_ID` int(11) NOT NULL,
  `Prestamo_ID` int(11) NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `prestamorevista`
--

INSERT INTO `prestamorevista` (`Ejemplar_Revista_ID`, `Prestamo_ID`, `Estado`) VALUES
(7, 1, '1'),
(24, 6, '1'),
(10, 6, '1'),
(9, 7, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
`idproducto` int(11) NOT NULL,
  `idtipoproducto` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idtipoproducto`, `producto`, `cantidad`, `estado`) VALUES
(1, 2, 'Atun', 3, 1),
(2, 2, 'Atunes', 6, 1),
(3, 2, 'Atunesi', 3, 0),
(4, 2, 'Atunessss', 3, 1),
(5, 2, 'Atunesss', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revista`
--

CREATE TABLE IF NOT EXISTS `revista` (
`Revista_ID` int(11) NOT NULL,
  `Articulo_ID` int(11) NOT NULL,
  `Categoria_ID` int(11) NOT NULL,
  `Clase_Revista_ID` int(11) NOT NULL,
  `Patrocinador_ID` int(11) NOT NULL,
  `Titulo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Titulo_abreviado` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Area_tematica` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Periocidad` int(11) NOT NULL,
  `Editor` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Codigo_postal` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion_web` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Lugar_edicion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `revista`
--

INSERT INTO `revista` (`Revista_ID`, `Articulo_ID`, `Categoria_ID`, `Clase_Revista_ID`, `Patrocinador_ID`, `Titulo`, `Titulo_abreviado`, `Area_tematica`, `Periocidad`, `Editor`, `Ciudad`, `Codigo_postal`, `Direccion_web`, `Lugar_edicion`, `Estado`) VALUES
(1, 8, 2, 1, 1, 'la nueva era del mundo', 'la era', 'lenguaje', 4, 'yo', 'tarapoto', '051', 'dfghh@hotmail.com', 'tarapoto', '1'),
(2, 4, 1, 1, 3, 'Las nuevas técnologias', 'TIC', 'Informática', 2, 'Juan Alban', 'tarapoto', '051', 'alvan@hotmail.com', 'FISI', '1'),
(3, 9, 1, 2, 5, 'Communications &amp; strategie', 'CS', ' Tecnología Pecuaria y Pesquer', 5, 'Maria Arguedes', '', '02', 'https://www.google.com.pe/search?q=LISTAS+DE+CODIGO', 'Piura ', '1'),
(4, 11, 2, 1, 8, 'La vida sin la Tecnologia', 'ST', ' Cs. Sociales', 6, 'Jose Martines', 'San Martin', '18', 'http://www.agencia.mincyt.gob.ar/frontend/agencia/post/737', 'Tumbes', '1'),
(5, 12, 3, 4, 4, 'Las Maravillas del Mundo', 'MM', 'Cs. de la Tierra e Hidro-atmos', 8, 'Cactalicio', 'Trujillito', '42', 'http://bibliotecnica.upc.edu/es/content/como-citar-documentos-impresos-audiovisuales-y-comunicaciones-orales', 'Trujillo', '1'),
(6, 6, 2, 2, 2, 'Vida y muerte de Hitler', 'H', 'Historia de la Humanidad', 2, 'lady Sansy', '', '052', 'http://192.168.1.41/biblioteca/revista', 'Tarapoto', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revistamoviminento`
--

CREATE TABLE IF NOT EXISTS `revistamoviminento` (
  `Movimiento_ID` int(11) NOT NULL,
  `Ejemplar_Revista_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `revistamoviminento`
--

INSERT INTO `revistamoviminento` (`Movimiento_ID`, `Ejemplar_Revista_ID`) VALUES
(26, 9),
(30, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sancion`
--

CREATE TABLE IF NOT EXISTS `sancion` (
`Sancion_ID` int(11) NOT NULL,
  `Lector_ID` int(11) NOT NULL,
  `Tipo_Sancion_ID` int(11) NOT NULL,
  `Descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_termino` date NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `sancion`
--

INSERT INTO `sancion` (`Sancion_ID`, `Lector_ID`, `Tipo_Sancion_ID`, `Descripcion`, `Fecha_inicio`, `Fecha_termino`, `Estado`) VALUES
(1, 1, 12457896, '2014-02-21', '0000-00-00', '2014-02-05', 'P'),
(2, 2, 2, 'thalia ha bañado', '2014-02-05', '2014-02-06', '1'),
(3, 4, 1, 'voy a comer ricokkk', '2014-02-22', '2014-02-04', '1'),
(4, 1, 1, 'veee', '2014-02-03', '2014-02-04', '0'),
(5, 1, 12458963, '2014-02-23', '0000-00-00', '0000-00-00', '2'),
(6, 0, 4528963, '2-12-4--20', '0000-00-00', '2014-02-10', '1'),
(7, 1, 4258968, '2014-02-24', '0000-00-00', '0000-00-00', '2'),
(8, 7, 2, 'Maltrato al libro prestado', '2014-02-23', '2014-02-25', '1'),
(9, 1, 3, 'Por no haber entregado la  lamina y mapa en la fecha establecidad', '2014-02-20', '2014-02-05', '1'),
(10, 5, 2, 'por no devolver', '2014-02-24', '2014-02-27', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocomprobante`
--

CREATE TABLE IF NOT EXISTS `tipocomprobante` (
`idtipocomprobante` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tipocomprobante`
--

INSERT INTO `tipocomprobante` (`idtipocomprobante`, `descripcion`, `estado`) VALUES
(1, 'Facturas', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE IF NOT EXISTS `tipoproducto` (
`idtipoproducto` int(6) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `estado` char(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`idtipoproducto`, `descripcion`, `estado`) VALUES
(1, 'Lacteos y leches', '0'),
(2, 'Conservas', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_autor`
--

CREATE TABLE IF NOT EXISTS `tipo_autor` (
`Tipo_Autor_ID` int(11) NOT NULL,
  `Tipoautor` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tipo_autor`
--

INSERT INTO `tipo_autor` (`Tipo_Autor_ID`, `Tipoautor`, `Estado`) VALUES
(1, 'Estudiante', '1'),
(2, 'Profesional', '1'),
(3, 'sddsdsddddddddd', '0'),
(4, 'dddcccccccccc', '0'),
(5, 'Publico', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_lector`
--

CREATE TABLE IF NOT EXISTS `tipo_lector` (
`Tipo_Lector_ID` int(11) NOT NULL,
  `Categoria_Lector_ID` int(11) NOT NULL,
  `Cantidad_sala` int(11) NOT NULL,
  `Cantidad_casa` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tipo_lector`
--

INSERT INTO `tipo_lector` (`Tipo_Lector_ID`, `Categoria_Lector_ID`, `Cantidad_sala`, `Cantidad_casa`, `Descripcion`, `Estado`) VALUES
(1, 1, 4, 2, 'Alumno', '1'),
(2, 3, 1, 0, 'Publico en general', '1'),
(3, 1, 4, 3, 'Docente', '1'),
(4, 1, 4, 1, 'Practicantes', '1'),
(5, 1, 2, 2, 'cdssasawwwwwwww', '0'),
(6, 3, 1, 2, 'nuevosss', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_libro`
--

CREATE TABLE IF NOT EXISTS `tipo_libro` (
`Tipo_Libro_ID` int(11) NOT NULL,
  `Materia_ID` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tipo_libro`
--

INSERT INTO `tipo_libro` (`Tipo_Libro_ID`, `Materia_ID`, `Descripcion`, `Estado`) VALUES
(1, 5, 'Libro de Texto', '1'),
(2, 11, 'De Referencia o Consulta', '1'),
(3, 4, 'Descriptivos', '1'),
(4, 8, 'Libros Poeticos', '1'),
(5, 3, 'personalidad', '1'),
(6, 1, 'Oratorias', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimiento`
--

CREATE TABLE IF NOT EXISTS `tipo_movimiento` (
`TipoMovimiento_ID` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tipo_movimiento`
--

INSERT INTO `tipo_movimiento` (`TipoMovimiento_ID`, `Descripcion`, `Estado`) VALUES
(1, 'Ingreso', '1'),
(2, 'Salida', '1'),
(3, 'Renovacion', '0'),
(4, 'egreso', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_prestamo`
--

CREATE TABLE IF NOT EXISTS `tipo_prestamo` (
`Tipo_Prestamo_ID` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tipo_prestamo`
--

INSERT INTO `tipo_prestamo` (`Tipo_Prestamo_ID`, `Descripcion`, `Estado`) VALUES
(2, 'Para sala', '1'),
(3, 'Para Casa', '1'),
(4, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '0'),
(5, 'hola', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_sancion`
--

CREATE TABLE IF NOT EXISTS `tipo_sancion` (
`Tipo_Sancion_ID` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tipo_sancion`
--

INSERT INTO `tipo_sancion` (`Tipo_Sancion_ID`, `Descripcion`, `Estado`) VALUES
(1, 'Leve', '1'),
(2, 'Grave', '0'),
(3, 'Gravote', '1'),
(4, 'Moderado', '1'),
(5, 'recontar grave', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE IF NOT EXISTS `ubicacion` (
`Ubicacion_ID` int(11) NOT NULL,
  `Fila` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `Columna` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` char(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`Ubicacion_ID`, `Fila`, `Columna`, `Estado`) VALUES
(1, '4', '2', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubigeo`
--

CREATE TABLE IF NOT EXISTS `ubigeo` (
`Ubigeo_ID` int(11) NOT NULL,
  `Ubigeo` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ubigeo`
--

INSERT INTO `ubigeo` (`Ubigeo_ID`, `Ubigeo`) VALUES
(1, 'kjfks');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alertas`
--
ALTER TABLE `alertas`
 ADD PRIMARY KEY (`idalerta`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
 ADD PRIMARY KEY (`Articulo_ID`);

--
-- Indices de la tabla `asesor`
--
ALTER TABLE `asesor`
 ADD PRIMARY KEY (`Asesor_ID`);

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
 ADD PRIMARY KEY (`Autor_ID`), ADD KEY `TC_Autor1692` (`Tipo_Autor_ID`);

--
-- Indices de la tabla `autorarticulo`
--
ALTER TABLE `autorarticulo`
 ADD PRIMARY KEY (`Autor_ID`,`Articulo_ID`), ADD KEY `TC_AutorArticulo1618` (`Autor_ID`), ADD KEY `TC_AutorArticulo1619` (`Articulo_ID`);

--
-- Indices de la tabla `autorlibro`
--
ALTER TABLE `autorlibro`
 ADD PRIMARY KEY (`Libro_ID`,`Autor_ID`), ADD KEY `TC_AutorLibro1639` (`Libro_ID`), ADD KEY `TC_AutorLibro1640` (`Autor_ID`);

--
-- Indices de la tabla `autormonografia`
--
ALTER TABLE `autormonografia`
 ADD PRIMARY KEY (`Monografia_ID`,`Autor_ID`), ADD KEY `TC_AutorMonografia1644` (`Monografia_ID`), ADD KEY `TC_AutorMonografia1645` (`Autor_ID`);

--
-- Indices de la tabla `bibliotecario`
--
ALTER TABLE `bibliotecario`
 ADD PRIMARY KEY (`bibliotecario_ID`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
 ADD PRIMARY KEY (`Categoria_ID`);

--
-- Indices de la tabla `categoria_lector`
--
ALTER TABLE `categoria_lector`
 ADD PRIMARY KEY (`Categoria_Lector_ID`);

--
-- Indices de la tabla `clase_laminamapa`
--
ALTER TABLE `clase_laminamapa`
 ADD PRIMARY KEY (`Clase_LaminaMapa_ID`);

--
-- Indices de la tabla `clase_revista`
--
ALTER TABLE `clase_revista`
 ADD PRIMARY KEY (`Clase_Revista_ID`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
 ADD PRIMARY KEY (`Curso_ID`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
 ADD PRIMARY KEY (`Editorial_ID`);

--
-- Indices de la tabla `ejemplar_laminamapa`
--
ALTER TABLE `ejemplar_laminamapa`
 ADD PRIMARY KEY (`Ejemplar_LaminaMapa_ID`), ADD KEY `TC_Ejemplar_LaminaMapa1696` (`LaminaMapa_ID`);

--
-- Indices de la tabla `ejemplar_libro`
--
ALTER TABLE `ejemplar_libro`
 ADD PRIMARY KEY (`Ejemplar_Libro_ID`), ADD KEY `TC_Ejemplar_Libro1698` (`Libro_ID`);

--
-- Indices de la tabla `ejemplar_monografia`
--
ALTER TABLE `ejemplar_monografia`
 ADD PRIMARY KEY (`Ejemplar_Monografia_ID`), ADD KEY `TC_Ejemplar_Monografia1701` (`Monografia_ID`);

--
-- Indices de la tabla `ejemplar_revista`
--
ALTER TABLE `ejemplar_revista`
 ADD PRIMARY KEY (`Ejemplar_Revista_ID`), ADD KEY `TC_Ejemplar_Revista1702` (`Revista_ID`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
 ADD PRIMARY KEY (`idempleado`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
 ADD PRIMARY KEY (`Grado_ID`);

--
-- Indices de la tabla `laminamapa`
--
ALTER TABLE `laminamapa`
 ADD PRIMARY KEY (`LaminaMapa_ID`), ADD KEY `TC_LaminaMapa1704` (`Clase_LaminaMapa_ID`);

--
-- Indices de la tabla `laminamapamovimiento`
--
ALTER TABLE `laminamapamovimiento`
 ADD PRIMARY KEY (`Movimiento_ID`,`Ejemplar_LaminaMapa_ID`), ADD KEY `TC_LaminaMapaMovimiento1650` (`Movimiento_ID`), ADD KEY `TC_LaminaMapaMovimiento1651` (`Ejemplar_LaminaMapa_ID`);

--
-- Indices de la tabla `lector`
--
ALTER TABLE `lector`
 ADD PRIMARY KEY (`Lector_ID`), ADD KEY `TC_Lector1706` (`Grado_ID`), ADD KEY `TC_Lector1707` (`Tipo_Lector_ID`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
 ADD PRIMARY KEY (`Libro_ID`), ADD KEY `TC_Libro1710` (`Tipo_Libro_ID`);

--
-- Indices de la tabla `libromovimineto`
--
ALTER TABLE `libromovimineto`
 ADD PRIMARY KEY (`Movimiento_ID`,`Ejemplar_Libro_ID`), ADD KEY `TC_LibroMovimineto1646` (`Movimiento_ID`), ADD KEY `TC_LibroMovimineto1647` (`Ejemplar_Libro_ID`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
 ADD PRIMARY KEY (`Materia_ID`), ADD KEY `TC_Materia1711` (`Categoria_ID`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
 ADD PRIMARY KEY (`id_modulo`);

--
-- Indices de la tabla `monografia`
--
ALTER TABLE `monografia`
 ADD PRIMARY KEY (`Monografia_ID`), ADD KEY `TC_Monografia1713` (`Asesor_ID`), ADD KEY `TC_Monografia1712` (`Curso_ID`);

--
-- Indices de la tabla `monografiamovimiento`
--
ALTER TABLE `monografiamovimiento`
 ADD PRIMARY KEY (`Movimiento_ID`,`Ejemplar_Monografia_ID`), ADD KEY `TC_MonografiaMovimiento1652` (`Movimiento_ID`), ADD KEY `TC_MonografiaMovimiento1653` (`Ejemplar_Monografia_ID`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
 ADD PRIMARY KEY (`Movimiento_ID`), ADD KEY `TC_Movimiento1715` (`TipoMovimiento_ID`);

--
-- Indices de la tabla `patrocinador`
--
ALTER TABLE `patrocinador`
 ADD PRIMARY KEY (`Patrocinador_ID`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
 ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
 ADD KEY `perfil_perfil` (`id_perfil`), ADD KEY `modulo_modulo` (`id_modulo`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
 ADD PRIMARY KEY (`Prestamo_ID`), ADD KEY `TC_Prestamo1718` (`Tipo_Prestamo_ID`), ADD KEY `TC_Prestamo1719` (`Lector_ID`), ADD KEY `FK_Prestamo853` (`Bibliotecario_ID`);

--
-- Indices de la tabla `prestamolaminamapa`
--
ALTER TABLE `prestamolaminamapa`
 ADD PRIMARY KEY (`Prestamo_ID`,`Ejemplar_LaminaMapa_ID`), ADD KEY `TC_PrestamoLaminaMapa1658` (`Prestamo_ID`), ADD KEY `TC_PrestamoLaminaMapa1659` (`Ejemplar_LaminaMapa_ID`);

--
-- Indices de la tabla `prestamolibro`
--
ALTER TABLE `prestamolibro`
 ADD PRIMARY KEY (`Prestamo_ID`,`Ejemplar_Libro_ID`), ADD KEY `TC_PrestamoLibro1656` (`Prestamo_ID`), ADD KEY `TC_PrestamoLibro1657` (`Ejemplar_Libro_ID`);

--
-- Indices de la tabla `prestamomonografia`
--
ALTER TABLE `prestamomonografia`
 ADD PRIMARY KEY (`Ejemplar_Monografia_ID`,`Prestamo_ID`), ADD KEY `TC_PrestamoMonografia1628` (`Ejemplar_Monografia_ID`), ADD KEY `TC_PrestamoMonografia1629` (`Prestamo_ID`);

--
-- Indices de la tabla `prestamorevista`
--
ALTER TABLE `prestamorevista`
 ADD PRIMARY KEY (`Ejemplar_Revista_ID`,`Prestamo_ID`), ADD KEY `TC_PrestamoRevista1630` (`Ejemplar_Revista_ID`), ADD KEY `TC_PrestamoRevista1631` (`Prestamo_ID`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
 ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `revista`
--
ALTER TABLE `revista`
 ADD PRIMARY KEY (`Revista_ID`), ADD KEY `TC_Revista1723` (`Categoria_ID`), ADD KEY `TC_Revista1722` (`Articulo_ID`), ADD KEY `TC_Revista1721` (`Clase_Revista_ID`), ADD KEY `TC_Revista1720` (`Patrocinador_ID`);

--
-- Indices de la tabla `revistamoviminento`
--
ALTER TABLE `revistamoviminento`
 ADD PRIMARY KEY (`Movimiento_ID`,`Ejemplar_Revista_ID`), ADD KEY `TC_RevistaMoviminento1648` (`Movimiento_ID`), ADD KEY `TC_RevistaMoviminento1649` (`Ejemplar_Revista_ID`);

--
-- Indices de la tabla `sancion`
--
ALTER TABLE `sancion`
 ADD PRIMARY KEY (`Sancion_ID`), ADD KEY `TC_Sancion1724` (`Tipo_Sancion_ID`), ADD KEY `TC_Sancion1726` (`Lector_ID`);

--
-- Indices de la tabla `tipocomprobante`
--
ALTER TABLE `tipocomprobante`
 ADD PRIMARY KEY (`idtipocomprobante`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
 ADD PRIMARY KEY (`idtipoproducto`);

--
-- Indices de la tabla `tipo_autor`
--
ALTER TABLE `tipo_autor`
 ADD PRIMARY KEY (`Tipo_Autor_ID`);

--
-- Indices de la tabla `tipo_lector`
--
ALTER TABLE `tipo_lector`
 ADD PRIMARY KEY (`Tipo_Lector_ID`), ADD KEY `TC_Tipo_Lector1728` (`Categoria_Lector_ID`);

--
-- Indices de la tabla `tipo_libro`
--
ALTER TABLE `tipo_libro`
 ADD PRIMARY KEY (`Tipo_Libro_ID`), ADD KEY `TC_Tipo_Libro1729` (`Materia_ID`);

--
-- Indices de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
 ADD PRIMARY KEY (`TipoMovimiento_ID`), ADD KEY `TC_Tipo_Movimiento1730` (`TipoMovimiento_ID`);

--
-- Indices de la tabla `tipo_prestamo`
--
ALTER TABLE `tipo_prestamo`
 ADD PRIMARY KEY (`Tipo_Prestamo_ID`);

--
-- Indices de la tabla `tipo_sancion`
--
ALTER TABLE `tipo_sancion`
 ADD PRIMARY KEY (`Tipo_Sancion_ID`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
 ADD PRIMARY KEY (`Ubicacion_ID`), ADD KEY `TC_Ubicacion1731` (`Ubicacion_ID`);

--
-- Indices de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
 ADD PRIMARY KEY (`Ubigeo_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alertas`
--
ALTER TABLE `alertas`
MODIFY `idalerta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
MODIFY `Articulo_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `asesor`
--
ALTER TABLE `asesor`
MODIFY `Asesor_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
MODIFY `Autor_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `bibliotecario`
--
ALTER TABLE `bibliotecario`
MODIFY `bibliotecario_ID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
MODIFY `Categoria_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `categoria_lector`
--
ALTER TABLE `categoria_lector`
MODIFY `Categoria_Lector_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `clase_laminamapa`
--
ALTER TABLE `clase_laminamapa`
MODIFY `Clase_LaminaMapa_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `clase_revista`
--
ALTER TABLE `clase_revista`
MODIFY `Clase_Revista_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
MODIFY `idcliente` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
MODIFY `Curso_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
MODIFY `Editorial_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `ejemplar_laminamapa`
--
ALTER TABLE `ejemplar_laminamapa`
MODIFY `Ejemplar_LaminaMapa_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ejemplar_libro`
--
ALTER TABLE `ejemplar_libro`
MODIFY `Ejemplar_Libro_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `ejemplar_monografia`
--
ALTER TABLE `ejemplar_monografia`
MODIFY `Ejemplar_Monografia_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ejemplar_revista`
--
ALTER TABLE `ejemplar_revista`
MODIFY `Ejemplar_Revista_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
MODIFY `idempleado` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
MODIFY `Grado_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `laminamapa`
--
ALTER TABLE `laminamapa`
MODIFY `LaminaMapa_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `lector`
--
ALTER TABLE `lector`
MODIFY `Lector_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
MODIFY `Libro_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
MODIFY `Materia_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
MODIFY `id_modulo` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT de la tabla `monografia`
--
ALTER TABLE `monografia`
MODIFY `Monografia_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
MODIFY `Movimiento_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `patrocinador`
--
ALTER TABLE `patrocinador`
MODIFY `Patrocinador_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
MODIFY `id_perfil` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
MODIFY `Prestamo_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `revista`
--
ALTER TABLE `revista`
MODIFY `Revista_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `sancion`
--
ALTER TABLE `sancion`
MODIFY `Sancion_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tipocomprobante`
--
ALTER TABLE `tipocomprobante`
MODIFY `idtipocomprobante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
MODIFY `idtipoproducto` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_autor`
--
ALTER TABLE `tipo_autor`
MODIFY `Tipo_Autor_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipo_lector`
--
ALTER TABLE `tipo_lector`
MODIFY `Tipo_Lector_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipo_libro`
--
ALTER TABLE `tipo_libro`
MODIFY `Tipo_Libro_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
MODIFY `TipoMovimiento_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_prestamo`
--
ALTER TABLE `tipo_prestamo`
MODIFY `Tipo_Prestamo_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipo_sancion`
--
ALTER TABLE `tipo_sancion`
MODIFY `Tipo_Sancion_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
MODIFY `Ubicacion_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ubigeo`
--
ALTER TABLE `ubigeo`
MODIFY `Ubigeo_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`),
ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id_modulo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
