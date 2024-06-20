# Trabajo Fin de Máster

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

Repositorio para mi Trabajo Fin de Máster titulado ***Detección temprana del trastorno del espectro autista
mediante inteligencia artificial confiable*** del Máster Universitario en Ciencia de Datos e Ingeniería de Computadores de la Universidad de Granada.

##### Tutores:

- Alberto Fernández Hilario (Dpto. de Ciencias de la Computación e Inteligencia Artificial).

## Descripción

La detección temprana del Trastorno del Espectro Autista (TEA) es crucial para facilitar intervenciones oportunas, mejorar los resultados y aumentar la calidad de vida de las personas con autismo, así como proporcionar alivio y consejo genético a las familias. La inteligencia artificial (IA) y el aprendizaje automático han avanzado considerablemente el estudio del TEA, permitiendo análisis sofisticados de datos conductuales complejos y proporcionando métodos de detección más precisos y oportunos. Sin embargo, la investigación existente se centra principalmente en métodos manuales de cribado a través de encuestas psicológicas y/o en la aplicación de imágenes por resonancia magnética funcional y electroencefalogramas. En el primer caso, la subjetividad del procedimiento limita su efectividad, mientras que en el segundo, el alto costo representa una barrera para su uso generalizado en el diagnóstico.

Considerando estos factores, nuestra investigación contribuye significativamente al campo al integrar tecnología portátil con atención psicosanitaria, utilizando capacidades de seguimiento ocular como un enfoque novedoso y no invasivo para el diagnóstico temprano del TEA. Nuestra metodología se destaca por ofrecer un proceso integral de cuatro pasos que incluye un preprocesamiento de imágenes sofisticado, una extracción de características innovadora, una clasificación precisa y una nueva estrategia de agregación multiinstancia. Mostramos su potencial a través de un estudio de caso convincente que atestigua la viabilidad y eficacia de este paradigma innovador.

En la experimentación realizada, hemos logrado mejorar ligeramente los resultados del estado del arte para este conjunto de datos. Se han aplicado dos modelos de aprendizaje: uno basado en el descriptor HOG junto con SVM y kNN, y otro basado en redes neuronales convolucionales. En la clasificación binaria, se ha conseguido clasificar correctamente la totalidad de los individuos, mientras que en la clasificación ordinal multiclase con cuatro grados de severidad, la precisión alcanzada es del 83%.

La contribución más original de este trabajo radica en la aplicación de un enfoque basado en Inteligencia Artificial Confiable. Esta contribución se basa en tres pilares: i) la explicabilidad de las decisiones del clasificador en función de las zonas más influyentes de la imagen; ii) el análisis de la equidad sobre la variable género mediante el uso de diferentes métricas; y iii) el empleo de aprendizaje federado (FL) como herramienta esencial para preservar la privacidad y seguridad de los usuarios, lo cual es crucial en el sector clínico y con pacientes menores de edad. Este paradigma facilitaría una implementación extensa de la detección de TEA mediante IA. Además, la descentralización de FL solo compromete la precisión en torno a un 10-15%.

## Objetivos

Este TFM tiene como objetivo principal emplear técnicas de ML que ayuden a diagnosticar precozmente el TEA mediante el uso de *eye-trackers* desde un enfoque de IA Confiable.

Este objetivo principal se puede desgranar en los siguientes objetivos parciales:
1. Estudiar la literatura especializada, tanto desde el área psicológica como computacional, para comprender el **alcance del problema de TEA** a nivel neurológico.
2. **Recopilar y analizar el estado del arte** en diagnóstico temprano para trastornos del neurodesarrollo, en especial TEA.
3. **Diseñar y desarrollar una metodología** innovadora para la correcta resolución del problema, considerando distintos aspectos asociados a la IA confiable.
4. **Preparar un caso de estudio** completo para, mediante un análisis experimental, determinar las bondades de la propuesta.
5. **Obtener conclusiones** de interés y diseñar posibles actuaciones de trabajo futuro.

## Enlaces

[Descárgate el conjunto de datos](https://figshare.com/s/5d4f93395cc49d01e2bd).

## Licencia

Este proyecto está desarrollado bajo licencia [GNU General Public License v3.0](https://es.wikipedia.org/wiki/GNU_General_Public_License).
