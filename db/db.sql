-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Мар 15 2023 г., 16:41
-- Версия сервера: 5.7.39
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `proratings`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Ценностно-побудительные качества личности'),
(2, 'Регуляторные качества личности'),
(3, 'Индивидуально-типологические ПВК характеризуют черты характера и нравственные качества.'),
(4, 'Свойства восприятия'),
(5, 'Свойства представления и воображения'),
(6, 'Свойства мышления'),
(7, 'Свойства памяти (скорость запоминания, объём и длительность удержания материала в памяти, скорость воспроизведения'),
(8, 'Энергопластический потенциал индивида'),
(9, 'Общие операциональные качества'),
(10, 'Физиологические ПВК (Регуляторные качества организма)'),
(11, 'Физические ПВК ( Морфологические качества индивида)');

-- --------------------------------------------------------

--
-- Структура таблицы `internals`
--

CREATE TABLE `internals` (
  `id` int(11) NOT NULL,
  `name` varchar(158) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `internals`
--

INSERT INTO `internals` (`id`, `name`, `category`) VALUES
(1, 'Готовность к защите Родины с оружием в руках', 1),
(2, 'Военно-профессиональная направленность', 1),
(3, 'Прямые внутренние мотивы военно-профессиональной деятельности', 1),
(4, 'Стремление к профессиональному совершенству', 1),
(5, 'Адекватная самооценка', 2),
(6, 'Самостоятельность', 2),
(7, 'Пунктуальность, педантичность', 2),
(8, 'Дисциплинированность', 2),
(9, 'Аккуратность в работе', 2),
(10, 'Организованность, самодисциплина', 2),
(11, 'Старательность, исполнительность', 2),
(12, 'Ответственность', 2),
(13, 'Трудолюбие', 2),
(14, 'Инициативность', 2),
(15, 'Самокритичность', 2),
(16, 'Оптимизм, доминирование положительных эмоций', 2),
(17, 'Самообладание, эмоциональная уравновешенность, выдержка', 2),
(18, 'Самоконтроль, способность к самонаблюдению', 2),
(19, 'Предусмотрительность', 2),
(20, 'Фрустрационная толерантность (отсутствие агрессивности или          депрессивности в ситуациях неудач)', 2),
(21, 'Самомобилизующийся тип реакции на препятствия, возникающие на пути к достижению цели.', 2),
(22, 'Интернальность (погруженность в себя, самодостаточность, необщительность)', 2),
(23, 'Экстернальность (ориентация на взаимодействие с людьми, общительность)', 2),
(24, 'Интрапунитивность (ориентация на собственные силы, уверенность в себе, чувство самоэффективности)', 2),
(25, 'Экстрапунитивность (ориентация на помощь других людей, надежда на благоприятные обстоятельства, неуверенность в себе)', 2),
(26, 'Способность планировать свою деятельность во времени', 2),
(27, 'Способность организовывать свою деятельность в условиях большого потока информации и разнообразия поставленных задач', 2),
(28, 'Способность брать на себя ответственность за принимаемые решения и действия', 2),
(29, 'Способность принимать решение в нестандартных ситуациях', 2),
(30, 'Способность рационально действовать в экстремальных ситуациях', 2),
(31, 'Способность эффективно действовать (также быстро принимать решения) в условиях дефицита времени', 2),
(32, 'Способность переносить неприятные ощущения (дурной запах, шум, грязь, холодная вода, ожог, царапина, удар электрического тока и т.д.) без потрясений', 2),
(33, 'Способность аргументировано отстаивать свое мнение', 2),
(34, 'Способность к переключениям с одной деятельности на другую', 2),
(35, 'Способность преодолевать страх', 2),
(36, 'Решительность', 3),
(37, 'Сильная воля', 3),
(38, 'Смелость', 3),
(39, 'Чувство долга', 3),
(40, 'Честность', 3),
(41, 'Порядочность', 3),
(42, 'Товарищество.', 3),
(43, 'Зрительная оценка размеров предметов.', 4),
(44, 'Зрительное восприятие расстояний между предметами.', 4),
(45, 'Глазомер: линейный, угловой, объемный.', 4),
(46, 'Глазомер динамический (способность оценивать направление и скорость движения предмета).', 4),
(47, 'Способность к различению фигуры (предмета, отметки, сигнала и пр.) на малоконтрастном фоне.', 4),
(48, 'Способность различать и опознавать замаскированные объекты.', 4),
(49, 'Способность к восприятию пространственного соотношения предметов.', 4),
(50, 'Точность и оценка направления на источник звука.', 4),
(51, 'способность узнавать и различать ритмы', 4),
(52, 'Речевой слух (восприятие устной речи)', 4),
(53, 'Различение отрезков времени', 4),
(54, 'Способность к распознаванию небольших отклонений параметров технологических процессов от заданных значений по визуальным признакам', 4),
(55, 'способность к распознаванию небольших отклонений параметров технологических процессов от заданных значений по акустическим признакам', 4),
(56, 'Способность к распознаванию небольших отклонений параметров технологических процессов от заданных значений по кинестетическим признакам', 4),
(57, 'Способность к зрительным представлениям.', 5),
(58, 'Способность к пространственному воображению.', 5),
(59, 'Способность к образному представлению предметов, процессов и явлений.', 5),
(60, 'Способность наглядно представлять себе новое явление, ранее, не встречающееся в опыте, или старое, но в новых условиях', 5),
(61, 'Способность к переводу образа в словесное описание', 5),
(62, 'Способность к воссозданию образа по словесному описанию', 5),
(63, 'Аналитичность (способность выделять отдельные элементы действительности, способность к классификации)', 6),
(64, 'Синтетичность (способность к обобщениям, установлению связей, закономерностей, формирование понятий)', 6),
(65, 'Транссонантность (способность к актуализации и вовлечению в процесс мышления информации, хранящейся в памяти, ассоциативность мышления)', 6),
(66, 'Логичность', 6),
(67, 'Креативность (способность порождать необычные идеи, отклоняться от традиционных схем мышления)', 6),
(68, 'Оперативность (скорость мыслительных процессов, интеллектуальная лабильность)', 6),
(69, 'Предметность (объекты реального мира и их признаки)', 6),
(70, 'Образность (наглядные образы, схемы, планы и т.д.)', 6),
(71, 'Абстрактность (абстрактные образы, понятия)', 6),
(72, 'Вербальность (устная и письменная речь)', 6),
(73, 'Калькулятивность (цифровой материал)', 6),
(74, 'Зрительная долговременная  память на лица', 7),
(75, 'Зрительная долговременная  память на образы предметного мира', 7),
(76, 'Зрительная долговременная память на условные обозначения (знаки, символы, планы, схемы, графики)', 7),
(77, 'Зрительная долговременная  память на цифры, даты', 7),
(78, 'Зрительная долговременная  память на слова и фразы', 7),
(79, 'Зрительная долговременная  память на семантику текста', 7),
(80, 'Зрительная оперативная  память на лица', 7),
(81, 'Зрительная оперативная  память на образы предметного мира', 7),
(82, 'Зрительная оперативная  память на условные обозначения (знаки, символы, планы, схемы, графики)', 7),
(83, 'Зрительная оперативная  память на цифры, даты', 7),
(84, 'Зрительная оперативная  память на слова и фразы', 7),
(85, 'Зрительная оперативная  память на семантику текста', 7),
(86, 'Слуховая память', 7),
(87, 'Слуховая долговременная  память на голоса', 7),
(88, 'Слуховая долговременная  память на цифры', 7),
(89, 'Слуховая долговременная  память на условные сигналы', 7),
(90, 'Слуховая долговременная  память на мелодии', 7),
(91, 'Слуховая долговременная  память на семантику сообщений', 7),
(92, 'Слуховая оперативная  память на цифры', 7),
(93, 'Слуховая оперативная  память на семантику сообщений', 7),
(94, 'Кинестетическая (моторная) память на простые движения', 7),
(95, 'Кинестетическая (моторная) память на сложные движения', 7),
(96, 'Кинестетическая (моторная) память на положение и перемещение тела в пространстве', 7),
(97, 'Тактильная память', 7),
(98, 'Обонятельная память', 7),
(99, 'Вкусовая память', 7),
(100, 'Энергичность, витальность (активность)', 8),
(101, 'Умственная работоспособность', 8),
(102, 'Физическая работоспособность (выносливость)', 8),
(103, 'Нервно-эмоциональная устойчивость, выносливость по отношению к эмоциональным нагрузкам', 8),
(104, 'Острота зрения', 9),
(105, 'Адаптация зрения к темноте, свету', 9),
(106, 'Контрастная чувствительность монохроматического зрения', 9),
(107, 'Цветовая дифференциальная чувствительность', 9),
(108, 'Устойчивость зрительной чувствительности во времени', 9),
(109, 'Острота слуха', 9),
(110, 'Контрастная чувствительность слуха', 9),
(111, 'Слуховая дифференциальная чувствительность (способность различать: тембр, длительность, высоту, силу звука, ритм, фоновые или разнообразные шумы)', 9),
(112, 'Переносимость длительно действующего звукового раздражителя', 9),
(113, 'Чувствительность (осязание) пальцев', 9),
(114, 'Вибрационная чувствительность', 9),
(115, 'Мышечно-суставная чувствительность усилий или сопротивления', 9),
(116, 'Ощущение равновесия', 9),
(117, 'Ощущение ускорения', 9),
(118, 'Обонятельная чувствительность', 9),
(119, 'Способность узнавать и различать вкусовые ощущения', 9),
(120, 'Объем внимания (количество объектов, на которые может быть направлено внимание при их одновременном восприятии)', 9),
(121, 'Концентрированность внимания', 9),
(122, 'Устойчивость внимания во времени', 9),
(123, 'Переключаемость внимания (способность быстрого переключения внимания с одного объекта на другой или с одной деятельности на другую)', 9),
(124, 'Способность к распределению внимания между несколькими объектами или видами деятельности', 9),
(125, 'Помехоустойчивость внимания', 9),
(126, 'Способность подмечать изменения в окружающей обстановке, не сосредотачивая сознательно на них внимание', 9),
(127, 'Умение подмечать незначительные (малозаметные) изменения в исследуемом объекте, в показаниях приборов', 9),
(128, 'Способность реагировать на неожиданный зрительный сигнал посредством определённых движений', 9),
(129, 'Способность реагировать на неожиданный слуховой сигнал посредством определённых движений', 9),
(130, 'Согласованность движений с процессами восприятия (сложноорганизованная деятельность)', 9),
(131, 'Способность к сенсомоторному слежению за движущимся объектом', 9),
(132, 'Способность к выполнению мелких точных движений', 9),
(133, 'Способность к выполнению сложных двигательных действий (актов)', 9),
(134, 'Способность к выполнению плавных соразмерных движений', 9),
(135, 'Координация движений ведущей руки.', 9),
(136, 'Координация движений обеих рук.', 9),
(137, 'Координация движений рук и ног.', 9),
(138, 'Координация работы кистей рук и пальцев.', 9),
(139, 'Твердость руки, устойчивость кистей рук (низкий тремор)', 9),
(140, 'Умение быстро записывать', 9),
(141, 'Красивый почерк', 9),
(142, 'Физическая сила.', 9),
(143, 'Способность к быстрой выработке сенсомоторных навыков', 9),
(144, 'Способность к быстрой перестройке сенсомоторных навыков', 9),
(145, 'Пластичность и выразительность движений', 9),
(146, 'Отсутствие дефектов речи, хорошая дикция.', 9),
(147, 'Способность речевого аппарата к интенсивной и длительной работе.', 9),
(148, 'Способность к изменению тембра.', 9),
(149, 'Способность к изменению силы звучания.', 9),
(150, 'Переносимость динамических физических нагрузок', 10),
(151, 'Переносимость статических физических нагрузок', 10),
(152, 'Быстрый переход из состояния покоя к интенсивной работе', 10),
(153, 'Сохранение работоспособности при недостатке сна', 10),
(154, 'Сохранение работоспособности при развивающемся утомлении', 10),
(155, 'Сохранение бдительности в условиях однообразной деятельности (монотонии)', 10),
(156, 'Сохранение бдительности в режиме ожидания', 10),
(157, 'Сохранение работоспособности в некомфортных температурных условиях', 10),
(158, 'Сохранение работоспособности в условиях знакопеременных перегрузок (в том числе укачивания)', 10),
(159, 'Сохранение работоспособности в условиях воздействия вибрации', 10),
(160, 'Сохранение работоспособности в условиях воздействия разнонаправленных перегрузок', 10),
(161, 'Сохранение работоспособности в условиях гипо(гипер) барометрических колебаний', 10),
(162, 'Сохранение работоспособности в условиях пониженного парциального давления кислорода', 10),
(163, 'Сохранение работоспособности в условиях пониженного парциального давления углекислого газа', 10),
(164, 'Сохранение работоспособности в условиях ограничения возможностей удовлетворения базовых жизненных потребностей (голод, жажда, отдых, сексуальная потребность)', 10),
(165, 'Сохранение работоспособности в разных природно-климатических условиях', 10),
(166, 'Способность переадаптироваться к новым средовым условиям', 10),
(167, 'Антропометрические характеристики (в соответствии с требованиями профессии)', 11),
(168, 'Особенности телосложения (в соответствии с требованиями профессии)', 11),
(169, 'Хорошее общее физическое развитие – выносливость, координированность, сила, быстрота', 11),
(170, 'Физическая подготовленность к воздействию неблагоприятных факторов профессиональной деятельности.', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `professions`
--

INSERT INTO `professions` (`id`, `name`, `description`) VALUES
(6, 'Военный офицер', 'Военный офицер - это профессиональный военный, обученный управлять и командовать воинскими частями и силами в различных условиях.  Военный офицер отвечает за обучение, мотивацию и подготовку своих подчиненных. Он также руководит операциями и задачами, связанными с обеспечением безопасности государства и его граждан. Во время военных действий он может быть ответственным за планирование и координацию операций, таких как наступление или оборона.'),
(7, 'Горный инженер', 'Горный инженер - это специалист, который занимается проектированием, строительством и эксплуатацией горных объектов и сооружений.  Горный инженер может работать в различных областях горного дела, таких как разработка рудных месторождений, подземное и открытое добыча полезных ископаемых, строительство гидроэлектростанций и других объектов, связанных с горной промышленностью.'),
(8, 'Веб-дизайнер', 'Веб-дизайнеры - это специалисты, занимающиеся проектированием и созданием веб-сайтов. Они разрабатывают дизайн, интерфейсы и визуальное оформление веб-страниц, учитывая потребности и предпочтения пользователей. Веб-дизайнеры также занимаются оптимизацией сайта для поисковых систем, созданием анимации и интерактивных элементов, тестированием и отладкой сайта.'),
(9, 'Администраторы баз данных', 'Администраторы баз данных - это специалисты, отвечающие за управление базами данных организации. Они отвечают за создание, настройку и обслуживание баз данных, обеспечивают их безопасность и надежность, а также мониторят производительность и доступность системы. Администраторы баз данных могут заниматься настройкой и оптимизацией баз данных, разработкой политики резервного копирования и восстановления данных, а также решением проблем и ошибок в работе баз данных.'),
(10, '3D-аниматор', '3D-аниматор - это специалист, который занимается созданием анимированных трехмерных объектов и персонажей для использования в кино, телевизионных передачах, видеоиграх, рекламных роликах и других мультимедийных проектах. Он использует специальное программное обеспечение для создания и анимации трехмерных моделей, которые затем используются в производстве фильмов, игр и других проектов.'),
(11, 'Строитель', 'Какое-то описание');

-- --------------------------------------------------------

--
-- Структура таблицы `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `k0` int(11) NOT NULL,
  `k1` int(11) NOT NULL,
  `k2` int(11) NOT NULL,
  `k3` int(11) NOT NULL,
  `k4` int(11) NOT NULL,
  `k5` int(11) NOT NULL,
  `k6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ratings`
--

INSERT INTO `ratings` (`id`, `prof_id`, `user_id`, `k0`, `k1`, `k2`, `k3`, `k4`, `k5`, `k6`) VALUES
(1, 6, 4, 1, 2, 3, 4, 15, 17, 21),
(2, 6, 5, 1, 4, 2, 3, 5, 6, 7),
(3, 7, 4, 7, 15, 13, 27, 35, 39, 38),
(4, 6, 7, 1, 2, 3, 4, 5, 7, 8),
(5, 6, 6, 1, 2, 3, 4, 12, 13, 38),
(6, 8, 4, 2, 21, 30, 38, 44, 49, 52),
(7, 9, 4, 3, 11, 30, 52, 56, 58, 63),
(8, 7, 7, 36, 37, 38, 44, 45, 46, 48),
(9, 7, 5, 8, 12, 31, 63, 104, 122, 166),
(10, 7, 6, 5, 13, 40, 38, 41, 44, 75),
(11, 6, 8, 4, 9, 12, 13, 11, 8, 38),
(12, 8, 5, 25, 33, 45, 58, 57, 59, 62),
(13, 8, 6, 101, 99, 104, 152, 168, 12, 13),
(14, 9, 5, 7, 12, 19, 29, 53, 61, 66),
(15, 8, 7, 101, 104, 106, 107, 13, 152, 7),
(16, 9, 6, 36, 44, 45, 48, 50, 58, 60),
(17, 7, 8, 3, 9, 15, 24, 33, 42, 50),
(18, 9, 7, 133, 132, 125, 64, 55, 37, 38),
(19, 8, 8, 4, 26, 35, 41, 52, 57, 67),
(20, 9, 8, 4, 21, 38, 64, 99, 120, 122),
(21, 6, 9, 1, 2, 3, 4, 5, 6, 7),
(22, 7, 9, 1, 2, 3, 4, 5, 10, 11),
(23, 6, 10, 1, 2, 3, 4, 7, 8, 9),
(24, 8, 9, 2, 4, 5, 6, 7, 8, 9),
(25, 9, 9, 1, 7, 8, 11, 10, 12, 13),
(26, 10, 9, 4, 9, 10, 11, 12, 13, 14),
(27, 7, 10, 1, 9, 10, 24, 26, 29, 15),
(28, 8, 10, 5, 6, 29, 41, 44, 47, 50),
(29, 9, 10, 3, 5, 11, 13, 14, 16, 18),
(30, 10, 4, 13, 14, 11, 19, 26, 38, 36);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(15) NOT NULL,
  `password` varchar(256) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `type`) VALUES
(1, 'meregodz', '9f435d4a7a1cda70c1720018f72b360b', 3),
(3, 'aboba', '150f15e73422e0a5ba5b59f997fc2350', 3),
(4, 'Ярослав', '150f15e73422e0a5ba5b59f997fc2350', 3),
(5, 'Вера', '202cb962ac59075b964b07152d234b70', 0),
(6, 'Michail', '25d55ad283aa400af464c76d713c07ad', 0),
(7, 'Mikhail Sergeev', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(8, 'Kate', '6788621f57642c72d8b6979d5ccb5eaf', 0),
(9, 'оля', 'a56cdb0f39a19015bc092aa7511f5ec4', 0),
(10, 'Лера', '3aa0f9419632de0ba072e0798d48e1cb', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `internals`
--
ALTER TABLE `internals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;