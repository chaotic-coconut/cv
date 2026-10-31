// Compile: typst compile cv_en.typ
// Public GitHub version: typst compile --input public=1 cv_en.typ cv_en.pdf
// Without active links: typst compile --input nolinks=1 cv_en.typ cv_en_nolinks.pdf
// Keep cv-template.typ in the same directory. Verified with Typst 0.15.0.
#import "cv-template.typ": *

#show: cv.with(
  name: "Viacheslav Kruglov",
  headline: "Computational Physicist · Scientific Software Developer · Numerical Algorithms",
  lang: "en",
  region: "gb",
  footer-label: "CV",
  contact-lines: (
    (
      [Vechta, Germany#if not public [, open to relocation within Germany]],
      cv-link("tel:+491634386998")[+49 163 4386998],
      cv-link("mailto:kruglovyacheslav@gmail.com")[kruglovyacheslav\@gmail.com],
    ),
    (
      cv-link("https://www.linkedin.com/in/viacheslav-kruglov-009667109")[linkedin.com/in/viacheslav-kruglov-009667109],
      cv-link("https://github.com/chaotic-coconut")[github.com/chaotic-coconut],
      cv-link("https://scholar.google.com/citations?user=620NArUAAAAJ&hl=en")[Google Scholar],
    ),
  ),
)

#section[Profile]
C++ and Python developer with a PhD in physics and mathematics and about ten years in numerical and simulation software, including processing of large datasets. Develop and maintain industrial C++ control software; built a parallel particle transport framework under memory constraints.#if not public [ Interested in simulation, numerical computing and backend systems with large data volumes.]

#section[Skills]
#rows(
  ([Core], [C++20, C++17, Python, Linux, Bash; MATLAB (university teaching)]),
  ([Parallel computing], [Intel TBB, OpenMP, SLURM, shared memory parallelism, processing with bounded memory]),
  ([Numerics], [ODE/PDE models, integration and interpolation, subspace analysis with SVD, eigenvalue problems, LAPACK, FFTW]),
  ([Data processing], [NumPy, pandas, NetCDF, zlib]),
  ([Build and testing], [CMake, Git, Boost.Test, CTest, GitLab CI, GitHub Actions]),
  ([Development], [Library and interface design, object-oriented C++, Visual Studio, GDB, Valgrind, Windows; Scrum, Jira, Confluence]),
)

#section[Professional Experience]

#entry(
  title: "Software Developer",
  org: "Big Dutchman Service GmbH",
  place: "Vechta",
  dates: "05/2026-present",
)[
  - Maintain and extend C++ control software, including stir fan control in the climate control system; add Boost.Test unit tests for changes.
  - Extend C++ components based on abstract classes while preserving existing interfaces.
  - Developed test tooling with a scanner simulator for a livestock monitoring system, so automated tests could run without scanner hardware.
  - Documented subsystem behaviour and known issues in Confluence to support troubleshooting and maintenance.
]

#entry(
  title: "Postdoctoral Researcher / Research Software Developer",
  org: "Carl von Ossietzky University of Oldenburg, ICBM",
  place: "Oldenburg",
  dates: "01/2023-02/2026",
)[
  - Developed a C++20/CMake framework for particle transport in unsteady ocean currents under Linux, combining spherical integration, kd‑tree queries and spline interpolation.
  - Parallelised particle propagation with Intel TBB on the university HPC cluster (SLURM); production runs were configured for 2.8 million particles per model day.
  - Kept memory use bounded during runs lasting several days by loading rolling time windows of NetCDF data.
  - Tested a prototype against an analytical flow field and checked time step sensitivity before analysing transport statistics in realistic fields.
]

#entry(
  title: "Research Scientist, Laboratory of Theoretical Nonlinear Dynamics",
  org: "Kotelnikov Institute of Radioengineering and Electronics (RAS), Saratov Branch",
  dates: "10/2017-10/2022",
)[
  - Developed C++ and Python models of oscillator, chemical and mechanical systems described by ODEs and PDEs.
  - Computed Lyapunov exponents and tested hyperbolicity using SVD, eigenvalue analysis and tangent space methods with LAPACK; analysed spectra with FFTW.
  - Ran studies of roughly one million parameter combinations with OpenMP and investigated regimes requiring long integrations.
]

#entry(
  title: "Software Engineer, Industrial Simulation",
  org: "INACOS (INIUS JSC)",
  place: "Saratov",
  dates: "02/2017-02/2018",
)[
  - Implemented models of thermodynamic properties and integrated a vacuum distillation column model into an industrial simulation platform.
  - Compared calculated process quantities with documented reference values and corrected discrepancies in the model and implementation.
]

#section[Public Repository]

#entry(
  title: "particle-transport-framework",
  org: cv-link("https://github.com/chaotic-coconut/particle-transport-framework")[github.com/chaotic-coconut/particle-transport-framework],
)[
  - Published the framework as a header-only C++20/CMake library that builds with both the old and the new Boost spline API and with different netCDF installations.
  - Maintain CTest checks for coordinate transforms, great circle distance derivatives, date calculations and compressed record round trips, with AddressSanitizer and UBSan builds in GitHub Actions.
]

#section[Research and Publications]
Researched nonlinear dynamics and chaotic systems, including numerical verification of hyperbolicity. \
Published 20 journal articles, four in _Chaos_, and two conference papers.

#section[Teaching and Talks]
- Gave lectures and seminar classes in Synchronisation and Statistical Radiophysics, and physics classes, at Saratov State Technical University (part time, 2018-2019 and 2020-2022).
- Designed and taught beginner Python courses and modelling practicals at the University of Oldenburg, including assessment.
- Presented a talk at Dynamics Days Europe 2025 and posters at Dynamics Days Europe 2024 and the EGU General Assembly 2025 in Vienna.

#section[Education]

#entry(
  title: "PhD in Physics and Mathematics",
  org: "Saratov State University",
  place: "Saratov",
  dates: "2012-2016",
)[
  Thesis: _Finite-dimensional and distributed ring-structured systems generating robust chaos._ \
  Assessed by the German ZAB as equivalent to a German doctorate.
]

#entry(
  title: "Diploma in Physics, with honours",
  org: "Saratov State University",
  place: "Saratov",
  dates: "2007-2012",
)[
  Five years of study. Specialisation: Physics of Open Nonlinear Systems within Computer Methods of Physics.
]

#section[Additional Information]
#rows(
  ([Languages], [English (fluent, working language), German (Goethe-Zertifikat B1), Russian (native)]),
  ([Work authorisation], [Permanent residence permit (Niederlassungserlaubnis); no sponsorship required]),
)
