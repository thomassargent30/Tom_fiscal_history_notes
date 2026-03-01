#!/bin/zsh
set -e
cd /Users/thomassargent/Documents/Github/Tom_and_Claude_2026/Tom_Claude_work_on_fiscal_history_book
pdflatex -interaction=nonstopmode where_to_draw_lines_sequel.tex
bibtex where_to_draw_lines_sequel
pdflatex -interaction=nonstopmode where_to_draw_lines_sequel.tex
pdflatex -interaction=nonstopmode where_to_draw_lines_sequel.tex
echo "PAGES: $(grep 'Output written' where_to_draw_lines_sequel.log | tail -1)"
grep -i "undefined citation\|undefined reference" where_to_draw_lines_sequel.log || echo "No undefined references."
