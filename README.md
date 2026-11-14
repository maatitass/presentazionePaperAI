# Slide LaTeX con Beamer

Progetto in italiano, formato 16:9, tema Moloch, compilato con pdfLaTeX e `latexmk`.
Le slide contengono esempi da sostituire, non un riassunto di un paper specifico.

## File da modificare

- `main.tex`: titolo, autore, corso e data.
- `slides.tex`: contenuti delle slide. Ogni ambiente `frame` crea una slide.
- `preamble.tex`: tema, lingua e impostazioni grafiche.
- `images/`: figure in PDF, PNG o JPG.
- `build/main.pdf`: presentazione compilata.

## Compilazione da terminale

Dalla cartella del progetto:

```sh
make
```

In alternativa, `latexmk main.tex` esegue la stessa compilazione.
`latexmk` ripete automaticamente i passaggi necessari per indice e numerazione.

```sh
make watch   # Ricompila quando salvi una modifica. Termina con Ctrl+C.
make clean   # Elimina gli intermedi e conserva il PDF.
```

La configurazione è in `.latexmkrc`. Se il terminale non trova gli eseguibili
LaTeX su questo Mac, esegui nella sessione corrente:

```sh
export PATH="/Library/TeX/texbin:$PATH"
```

## VS Code

LaTeX Workshop è già installato su questo Mac. Apri questa cartella in VS Code,
poi apri `main.tex`. La compilazione parte al salvataggio di un file `.tex`.
Puoi avviarla anche dalla palette comandi con
**LaTeX Workshop: Build LaTeX project**.

Per vedere il PDF nella finestra dell'editor usa
**LaTeX Workshop: View LaTeX PDF file**. L'anteprima si aggiorna dopo la compilazione.

Il percorso di `latexmk` nelle impostazioni di VS Code è quello dell'installazione
MacTeX/BasicTeX su macOS. Su un altro sistema sostituiscilo con il percorso locale
o con `latexmk` se disponibile nel `PATH`.

## Aggiungere una slide

Inserisci in `slides.tex`:

```tex
\begin{frame}{Titolo della slide}
  \begin{itemize}
    \item Primo punto.
    \item Secondo punto.
  \end{itemize}
\end{frame}
```

Per una nuova voce nell'indice aggiungi `\section{Nome della sezione}` prima
delle slide corrispondenti. La copertina non entra nel conteggio delle slide.

## Inserire una figura

Salva il file, per esempio `risultati.pdf`, in `images/`, poi aggiungi:

```tex
\begin{frame}{Risultati}
  \centering
  \includegraphics[width=0.85\textwidth,height=0.68\textheight,
                   keepaspectratio]{risultati.pdf}
\end{frame}
```

Le formule usano la normale sintassi LaTeX (`$...$` nel testo, `\[...\]` a sé).
Per frammenti di codice con `verbatim`, usa `\begin{frame}[fragile]{Titolo}`.

## Requisiti e documentazione

Su questo Mac sono già disponibili pdfLaTeX, `latexmk`, Beamer e i pacchetti
usati nel progetto. Non sono necessarie nuove installazioni.

- [Documentazione ufficiale Beamer](https://ctan.org/pkg/beamer)
- [Documentazione LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop/wiki)
