% Amezcua Kevin Elias
% Sistema de recomendación de carreras universitarias del TECNM

% ============================================================
% SECCION 1: BASE DE CONOCIMIENTO - ATRIBUTOS POR CARRERA
% ============================================================

% --- Arquitectura ---
carrera_atributo(arquitectura, matematicas).
carrera_atributo(arquitectura, creatividad).
carrera_atributo(arquitectura, diseno).
carrera_atributo(arquitectura, fisica).
carrera_atributo(arquitectura, innovacion).

% --- Ingenieria Bioquimica ---
carrera_atributo(ingenieria_bioq, quimica).
carrera_atributo(ingenieria_bioq, ciencias).
carrera_atributo(ingenieria_bioq, matematicas).
carrera_atributo(ingenieria_bioq, resolucion_problemas).
carrera_atributo(ingenieria_bioq, innovacion).

% --- Ingenieria Civil ---
carrera_atributo(ingenieria_civil, matematicas).
carrera_atributo(ingenieria_civil, fisica).
carrera_atributo(ingenieria_civil, diseno).
carrera_atributo(ingenieria_civil, trabajo_equipo).
carrera_atributo(ingenieria_civil, resolucion_problemas).

% --- Ingenieria Electrica ---
carrera_atributo(ingenieria_electrica, matematicas).
carrera_atributo(ingenieria_electrica, fisica).
carrera_atributo(ingenieria_electrica, tecnologia).
carrera_atributo(ingenieria_electrica, resolucion_problemas).
carrera_atributo(ingenieria_electrica, innovacion).

% --- Ingenieria en Gestion Empresarial ---
carrera_atributo(ing_gestion_empresarial, liderazgo).
carrera_atributo(ing_gestion_empresarial, administracion).
carrera_atributo(ing_gestion_empresarial, trabajo_equipo).
carrera_atributo(ing_gestion_empresarial, matematicas).
carrera_atributo(ing_gestion_empresarial, innovacion).

% --- Ingenieria en Sistemas Computacionales ---
carrera_atributo(ingenieria_sistemas, programacion).
carrera_atributo(ingenieria_sistemas, matematicas).
carrera_atributo(ingenieria_sistemas, tecnologia).
carrera_atributo(ingenieria_sistemas, resolucion_problemas).
carrera_atributo(ingenieria_sistemas, innovacion).

% --- Ingenieria Industrial ---
carrera_atributo(ingenieria_industrial, matematicas).
carrera_atributo(ingenieria_industrial, administracion).
carrera_atributo(ingenieria_industrial, trabajo_equipo).
carrera_atributo(ingenieria_industrial, resolucion_problemas).
carrera_atributo(ingenieria_industrial, liderazgo).

% --- Ingenieria Mecatronica ---
carrera_atributo(ingenieria_mecatronica, matematicas).
carrera_atributo(ingenieria_mecatronica, fisica).
carrera_atributo(ingenieria_mecatronica, tecnologia).
carrera_atributo(ingenieria_mecatronica, programacion).
carrera_atributo(ingenieria_mecatronica, innovacion).

% --- Ingenieria Quimica ---
carrera_atributo(ingenieria_quimica, quimica).
carrera_atributo(ingenieria_quimica, ciencias).
carrera_atributo(ingenieria_quimica, matematicas).
carrera_atributo(ingenieria_quimica, fisica).
carrera_atributo(ingenieria_quimica, resolucion_problemas).

% --- Licenciatura en Administracion ---
carrera_atributo(lic_administracion, liderazgo).
carrera_atributo(lic_administracion, administracion).
carrera_atributo(lic_administracion, trabajo_equipo).
carrera_atributo(lic_administracion, creatividad).
carrera_atributo(lic_administracion, diseno).

% ============================================================
% SECCION 2: NOMBRES LEGIBLES DE LAS CARRERAS
% ============================================================

nombre_carrera(arquitectura,            'Arquitectura').
nombre_carrera(ingenieria_bioq,         'Ingenieria Bioquimica').
nombre_carrera(ingenieria_civil,        'Ingenieria Civil').
nombre_carrera(ingenieria_electrica,    'Ingenieria Electrica').
nombre_carrera(ing_gestion_empresarial, 'Ingenieria en Gestion Empresarial').
nombre_carrera(ingenieria_sistemas,     'Ingenieria en Sistemas Computacionales').
nombre_carrera(ingenieria_industrial,   'Ingenieria Industrial').
nombre_carrera(ingenieria_mecatronica,  'Ingenieria Mecatronica').
nombre_carrera(ingenieria_quimica,      'Ingenieria Quimica').
nombre_carrera(lic_administracion,      'Licenciatura en Administracion').

% ============================================================
% SECCION 3: PREGUNTAS DEL CUESTIONARIO
% ============================================================

pregunta(matematicas, '¿Te gustan las matematicas y resolver problemas numericos?').
pregunta(programacion, '¿Te gusta o te gustaria aprender a programar computadoras?').
pregunta(creatividad, '¿Te consideras una persona creativa con gusto por el arte o el diseno?').
pregunta(liderazgo, '¿Tienes facilidad para liderar equipos o coordinar proyectos?').
pregunta(administracion, '¿Te interesa la gestion, organizacion y administracion de recursos?').
pregunta(quimica, '¿Disfrutas estudiar quimica y la transformacion de la materia?').
pregunta(fisica, '¿Te apasiona la fisica y comprender fenomenos del mundo natural?').
pregunta(tecnologia, '¿Te entusiasma la tecnologia y los avances tecnologicos recientes?').
pregunta(diseno, '¿Disfrutas disenar, dibujar o visualizar espacios y estructuras?').
pregunta(resolucion_problemas, '¿Te gusta analizar situaciones complejas y encontrar soluciones eficientes?').
pregunta(trabajo_equipo, '¿Prefieres trabajar colaborando en equipo con otras personas?').
pregunta(ciencias, '¿Te apasionan las ciencias naturales como la biologia o la quimica?').
pregunta(innovacion, '¿Te gusta proponer ideas nuevas e innovar en lo que haces?').

% ============================================================
% SECCION 4: AREAS PROFESIONALES POR CARRERA
% ============================================================

area_profesional(arquitectura, 'Diseno arquitectonico, urbanismo y planeacion territorial').
area_profesional(arquitectura, 'Construccion y supervision de obras civiles y privadas').
area_profesional(arquitectura, 'Restauracion de edificios historicos y patrimonio cultural').

area_profesional(ingenieria_bioq, 'Industria farmaceutica, biotecnologia y bioprocesos').
area_profesional(ingenieria_bioq, 'Investigacion cientifica y desarrollo de productos biologicos').
area_profesional(ingenieria_bioq, 'Control de calidad en alimentos, cosmeticos y medicamentos').

area_profesional(ingenieria_civil, 'Diseno y construccion de infraestructura vial y urbana').
area_profesional(ingenieria_civil, 'Gestion y supervision de proyectos de construccion').
area_profesional(ingenieria_civil, 'Hidraulica, saneamiento y obras de infraestructura hidrica').

area_profesional(ingenieria_electrica, 'Diseno e instalacion de sistemas electricos industriales').
area_profesional(ingenieria_electrica, 'Energias renovables, paneles solares y sustentabilidad').
area_profesional(ingenieria_electrica, 'Automatizacion, control de procesos y PLC').

area_profesional(ing_gestion_empresarial, 'Direccion estrategica y gestion de empresas').
area_profesional(ing_gestion_empresarial, 'Consultoria empresarial, proyectos e innovacion').
area_profesional(ing_gestion_empresarial, 'Emprendimiento, startups y desarrollo de negocios').

area_profesional(ingenieria_sistemas, 'Desarrollo de software, aplicaciones web y moviles').
area_profesional(ingenieria_sistemas, 'Inteligencia artificial, ciencia de datos y machine learning').
area_profesional(ingenieria_sistemas, 'Ciberseguridad, redes computacionales e infraestructura TI').

area_profesional(ingenieria_industrial, 'Optimizacion de procesos productivos y manufactura').
area_profesional(ingenieria_industrial, 'Gestion de calidad, cadena de suministro y logistica').
area_profesional(ingenieria_industrial, 'Seguridad e higiene industrial y mejora continua').

area_profesional(ingenieria_mecatronica, 'Robotica, automatizacion e Industria 4.0').
area_profesional(ingenieria_mecatronica, 'Diseno de sistemas mecanicos inteligentes y CNC').
area_profesional(ingenieria_mecatronica, 'Manufactura avanzada, PLC y sistemas embebidos').

area_profesional(ingenieria_quimica, 'Industria petroquimica, refinacion y plasticos').
area_profesional(ingenieria_quimica, 'Procesamiento de alimentos, materiales y nanomateriales').
area_profesional(ingenieria_quimica, 'Gestion ambiental, tratamiento de residuos y sustentabilidad').

area_profesional(lic_administracion, 'Recursos humanos, desarrollo organizacional y capacitacion').
area_profesional(lic_administracion, 'Finanzas, contabilidad empresarial y planeacion fiscal').
area_profesional(lic_administracion, 'Marketing digital, ventas y gestion comercial').

% ============================================================
% SECCION 5: ENUMERACION DE ATRIBUTOS Y CARRERAS
% ============================================================

atributo(matematicas).
atributo(programacion).
atributo(creatividad).
atributo(liderazgo).
atributo(administracion).
atributo(quimica).
atributo(fisica).
atributo(tecnologia).
atributo(diseno).
atributo(resolucion_problemas).
atributo(trabajo_equipo).
atributo(ciencias).
atributo(innovacion).

carrera(arquitectura).
carrera(ingenieria_bioq).
carrera(ingenieria_civil).
carrera(ingenieria_electrica).
carrera(ing_gestion_empresarial).
carrera(ingenieria_sistemas).
carrera(ingenieria_industrial).
carrera(ingenieria_mecatronica).
carrera(ingenieria_quimica).
carrera(lic_administracion).

% ============================================================
% SECCION 6: MOTOR DE INFERENCIA
% ============================================================

% calcular_puntaje(+Carrera, -Puntaje)
% Cuenta cuantos atributos de la Carrera fueron respondidos
calcular_puntaje(Carrera, Puntaje) :-
    findall(Attr,
        (carrera_atributo(Carrera, Attr), respuesta(Attr, si)),
        Coincidencias),
    length(Coincidencias, Puntaje).

% Una carrera es compatible si al menos un atributo 
% del usuario coincide con los de la carrera.
compatible(Carrera) :-
    carrera(Carrera),
    calcular_puntaje(Carrera, Puntaje),
    Puntaje > 0.

% ============================================================
% SECCION 7: INTERACCION CON EL USUARIO
% ============================================================

hacer_pregunta(Atributo) :-
    pregunta(Atributo, Texto),
    format('  ~w~n', [Texto]),
    format('  > Respuesta (s/n): '),
    read(Resp),
    (Resp = s
     -> assertz(respuesta(Atributo, si))
     ;  assertz(respuesta(Atributo, no))),
    nl.

hacer_todas_preguntas :-
    forall(atributo(A), hacer_pregunta(A)).

% ============================================================
% SECCION 8: GENERACION Y ORDENAMIENTO DE RECOMENDACIONES
% ============================================================

% Lista = [Puntaje-Carrera, ...] ordenada de mayor a menor puntaje.
% Solo incluye carreras con al menos 1 coincidencia.
obtener_recomendaciones(Recomendaciones) :-
    findall(Puntaje-Carrera,
        (carrera(Carrera),
         calcular_puntaje(Carrera, Puntaje),
         Puntaje > 0),
        Lista),
    msort(Lista, Ascendente),
    reverse(Ascendente, Recomendaciones).

% ============================================================
% SECCION 9: PRESENTACION DE RESULTADOS
% ============================================================

linea :-write('========================================================'), nl.

separador :-write('--------------------------------------------------------'), nl.

mostrar_recomendaciones([]) :-
    nl, 
    write('  Sin coincidencias. Intenta responder con mayor detalle.'), nl.

mostrar_recomendaciones(Lista) :-
    nl,
    linea,
    write('       RESULTADO: TUS CARRERAS RECOMENDADAS             '), nl,
    linea,
    mostrar_lista(Lista, 1).

mostrar_lista([], _).
mostrar_lista([Puntaje-Carrera | Resto], N) :-
    nombre_carrera(Carrera, Nombre),
    format('~n  ~w. ~w~n', [N, Nombre]),
    format('     Compatibilidad: ~w/5 atributos coinciden~n', [Puntaje]),
    write('     Areas profesionales:'), nl,
    forall(area_profesional(Carrera, Area),
           format('       * ~w~n', [Area])),
    N1 is N + 1,
    mostrar_lista(Resto, N1).

% ============================================================
% SECCION 10: GESTION DE SESION
% ============================================================

limpiar_sesion :-
    retractall(respuesta(_, _)).

% ============================================================
% SECCION 11: PREDICADO PRINCIPAL
% ============================================================

iniciar :-
    limpiar_sesion,
    nl,
    linea,
    write('   ORIENTADOR VOCACIONAL - MODELO SLM   '), nl,
    linea,
    nl,
    write('  Bienvenido. Este sistema analizara tus intereses      '), nl,
    write('  y habilidades para recomendarte una carrera ideal.    '), nl,
    nl,
    write('  Instrucciones:                                        '), nl,
    write('    - Escribe  s.  para responder SI                    '), nl,
    write('    - Escribe  n.  para responder NO                    '), nl,
    write('    - Incluye siempre el punto "." al final             '), nl,
    nl,
    separador,
    write('  CUESTIONARIO DE INTERESES Y HABILIDADES (13 preguntas)'), nl,
    separador,
    nl,
    hacer_todas_preguntas,
    separador,
    write('  Analizando tu perfil...                               '), nl,
    separador,
    obtener_recomendaciones(Recomendaciones),
    mostrar_recomendaciones(Recomendaciones),
    nl,
    linea,
    write('  Gracias por usar el Orientador Vocacional.            '), nl,
    write('  Para consultar de nuevo escribe: iniciar.             '), nl,
    linea,
    nl.

% ============================================================
% SECCION 12: CONSULTAS AUXILIARES
% ============================================================

% Ejemplo: ?- ver_perfil(ingenieria_sistemas).
ver_perfil(Carrera) :-
    nombre_carrera(Carrera, Nombre),
    format('~nPerfil de: ~w~n', [Nombre]),
    separador,
    write('  Atributos requeridos:'), nl,
    forall(carrera_atributo(Carrera, A),
           format('    - ~w~n', [A])),
    write('  Areas profesionales:'), nl,
    forall(area_profesional(Carrera, Area),
           format('    - ~w~n', [Area])),
    nl.

% Ejemplo: ?- listar_carreras.
listar_carreras :-
    nl,
    write('Carreras disponibles en el sistema:'), nl,
    forall(carrera(C),
           (nombre_carrera(C, N), format('  - ~w~n', [N]))).

% Ejemplo: ?- carreras_con_atributo(matematicas).
carreras_con_atributo(Atributo) :-
    format('~nCarreras que valoran el atributo "~w":~n', [Atributo]),
    forall(
        (carrera_atributo(C, Atributo), nombre_carrera(C, N)),
        format('  - ~w~n', [N])
    ).

% Ejemplo (despues de iniciar): ?- carreras_compatibles.
carreras_compatibles :-
    nl,
    write('Carreras compatibles con tu perfil actual:'), nl,
    forall(
        compatible(C),
        (nombre_carrera(C, N), calcular_puntaje(C, P),
         format('  - ~w  (~w/5)~n', [N, P]))
    ).
