// Kompilieren: typst compile cv_de.typ
// Öffentliche Version für GitHub: typst compile --input public=1 cv_de.typ cv_de.pdf
// Ohne aktive Links: typst compile --input nolinks=1 cv_de.typ cv_de_nolinks.pdf
// cv-template.typ im selben Ordner ablegen. Geprüft mit Typst 0.15.0.
#import "cv-template.typ": *

#show: cv.with(
  name: "Viacheslav Kruglov",
  headline: "Computational Physicist · Scientific Software Developer · Numerical Algorithms",
  lang: "de",
  footer-label: "Lebenslauf",
  contact-lines: (
    (
      [Vechta#if not public [, umzugsbereit innerhalb Deutschlands]],
      cv-link("tel:+491634386998")[+49 163 4386998],
      cv-link("mailto:kruglovyacheslav@gmail.com")[kruglovyacheslav\@gmail.com],
    ),
    (
      cv-link("https://www.linkedin.com/in/viacheslav-kruglov-009667109")[linkedin.com/in/viacheslav-kruglov-009667109],
      cv-link("https://github.com/chaotic-coconut")[github.com/chaotic-coconut],
      cv-link("https://scholar.google.com/citations?user=620NArUAAAAJ&hl=de")[Google Scholar],
    ),
  ),
)

#section[Profil]
Entwickler für C++ und Python mit Promotion in Physik und Mathematik und rund zehn Jahren Erfahrung mit numerischer Software und Simulation, einschließlich der Verarbeitung großer Datenmengen. Derzeit Entwicklung und Pflege industrieller Steuerungssoftware in C++; zuvor Entwicklung eines parallelen Frameworks für Partikeltransport mit begrenztem Arbeitsspeicher.#if not public [ Interesse an Aufgaben in Simulation, wissenschaftlichem Rechnen oder datenintensiven Backends.]

#section[Kenntnisse]
#rows(
  ([Kernkenntnisse], [C++20, C++17, Python, Linux, Bash; MATLAB (Universitätslehre)]),
  ([Parallelisierung], [Intel TBB, OpenMP, SLURM, Parallelisierung mit gemeinsamem Speicher, Verarbeitung mit begrenztem Arbeitsspeicher]),
  ([Numerik], [Modelle mit gewöhnlichen und partiellen Differentialgleichungen, Integration und Interpolation, Unterraumanalyse mit SVD, Eigenwertprobleme, LAPACK, FFTW]),
  ([Datenverarbeitung], [NumPy, pandas, NetCDF, zlib]),
  ([Build und Tests], [CMake, Git, Boost.Test, CTest, GitLab CI, GitHub Actions]),
  ([Entwicklung], [Design von Bibliotheken und Schnittstellen, objektorientiertes C++, Visual Studio, GDB, Valgrind, Windows; Scrum, Jira, Confluence]),
)

#section[Berufserfahrung]

#entry(
  title: "Softwareentwickler",
  org: "Big Dutchman Service GmbH",
  place: "Vechta",
  dates: "seit 05/2026",
)[
  - Pflege und Erweiterung von Steuerungssoftware in C++, darunter die Steuerung von Umluftventilatoren in der Stallklimaregelung; Modultests mit Boost.Test.
  - Erweiterung von Komponenten in C++ auf Basis abstrakter Klassen unter Beibehaltung der bestehenden Schnittstellen.
  - Entwicklung von Testwerkzeugen mit einem Scannersimulator für ein Tierüberwachungssystem, sodass automatisierte Tests ohne Scannerhardware auskommen.
  - Dokumentation von Verhalten und bekannten Problemen eines Subsystems in Confluence zur Unterstützung von Fehlersuche und Wartung.
]

#entry(
  title: "Postdoc / Entwickler wissenschaftlicher Software",
  org: "Carl von Ossietzky Universität Oldenburg, ICBM",
  place: "Oldenburg",
  dates: "01/2023-02/2026",
)[
  - Entwicklung eines Frameworks in C++20 und CMake unter Linux für Partikeltransport in zeitabhängigen Meeresströmungen mit Trajektorienintegration auf der Kugel, Abfragen mit kd‑Bäumen und Interpolation mit Splines.
  - Parallelisierung der Partikelberechnung mit Intel TBB auf dem Rechencluster der Universität (SLURM); Produktionsläufe konfiguriert für 2,8 Mio. Partikel pro Modelltag.
  - Begrenzung des Arbeitsspeicherbedarfs bei mehrtägigen Läufen durch Laden der Daten aus NetCDF in aufeinanderfolgenden Zeitfenstern.
  - Test eines Prototyps anhand eines analytischen Strömungsfelds und Untersuchung der Zeitschrittabhängigkeit vor der Auswertung von Transportstatistiken in realistischen Feldern.
]

#entry(
  title: "Wissenschaftlicher Mitarbeiter, Labor für theoretische nichtlineare Dynamik",
  org: "Kotelnikov-Institut für Radiotechnik und Elektronik (RAN), Zweigstelle Saratow",
  dates: "10/2017-10/2022",
)[
  - Entwicklung von Modellen in C++ und Python für Oszillatoren sowie chemische und mechanische Systeme mit gewöhnlichen und partiellen Differentialgleichungen.
  - Berechnung von Lyapunov-Exponenten und Prüfung der Hyperbolizität mit SVD, Eigenwertanalysen und Tangentialraummethoden mit LAPACK; Spektralanalyse mit FFTW.
  - Parameterstudien mit rund einer Million Parameterkombinationen, parallelisiert mit OpenMP; Untersuchung von Regimen, die lange Integrationen erfordern.
]

#entry(
  title: "Software Engineer, industrielle Simulation",
  org: "INACOS (INIUS JSC)",
  place: "Saratow",
  dates: "02/2017-02/2018",
)[
  - Implementierung von Modellen für thermodynamische Stoffdaten und Integration eines Modells einer Vakuumrektifikationskolonne in eine industrielle Simulationsplattform.
  - Abgleich berechneter Prozessgrößen mit dokumentierten Referenzwerten und Korrektur von Abweichungen in Modell und Implementierung.
]

#section[Öffentliches Repository]

#entry(
  title: "particle-transport-framework",
  org: cv-link("https://github.com/chaotic-coconut/particle-transport-framework")[github.com/chaotic-coconut/particle-transport-framework],
)[
  - Veröffentlichung des Frameworks als Bibliothek für C++20 und CMake, die nur aus Headern besteht; kompatibel mit der alten und der neuen Schnittstelle für Splines in Boost sowie mit unterschiedlichen Installationen von netCDF.
  - Pflege der Tests mit CTest für Koordinatentransformationen, Ableitungen der Großkreisdistanz, Datumsberechnungen sowie Lesen und Schreiben komprimierter Datensätze; Ausführung in GitHub Actions mit AddressSanitizer und UBSan.
]

#section[Forschung und Publikationen]
Forschung zu nichtlinearer Dynamik und chaotischen Systemen, einschließlich numerischer Verifikation der Hyperbolizität. \
20 Zeitschriftenartikel, davon vier in _Chaos_, und zwei Konferenzbeiträge.

#section[Lehre und Vorträge]
- Vorlesungen und Seminare zu Synchronisation und statistischer Radiophysik sowie Lehrveranstaltungen in Physik an der Staatlichen Technischen Universität Saratow (Teilzeit, 2018-2019 und 2020-2022).
- Konzeption und Durchführung von Kursen in Python für Einsteiger sowie Modellierungspraktika an der Universität Oldenburg, einschließlich der Leistungsbewertung.
- Vortrag bei Dynamics Days Europe 2025; Poster bei Dynamics Days Europe 2024 und der EGU General Assembly 2025 in Wien.

#section[Ausbildung]

#entry(
  title: "Promotion in Physik und Mathematik",
  org: "Staatliche Universität Saratow",
  place: "Saratow",
  dates: "2012-2016",
)[
  Dissertation: _Endlichdimensionale und verteilte Systeme mit Ringstruktur zur Erzeugung robusten Chaos._ \
  Laut Zeugnisbewertung der ZAB gleichwertig mit einer deutschen Promotion.
]

#entry(
  title: "Diplom in Physik, mit Auszeichnung",
  org: "Staatliche Universität Saratow",
  place: "Saratow",
  dates: "2007-2012",
)[
  Fünfjähriges Studium. Spezialisierung: Physik offener nichtlinearer Systeme, Fachrichtung Computermethoden der Physik.
]

#section[Weitere Angaben]
#rows(
  ([Sprachen], [Englisch (fließend, Arbeitssprache), Deutsch (Goethe-Zertifikat B1), Russisch (Muttersprache)]),
  ([Aufenthaltsstatus], [Niederlassungserlaubnis (unbefristet), uneingeschränkter Zugang zum Arbeitsmarkt]),
)
