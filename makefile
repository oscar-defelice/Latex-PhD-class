#
#  makefile
#
#  Created by Oscar de Felice on 15/05/2017, this file is standalone.
#  Copyright © 2017 Oscar de Felice.
#
#  This file is free software: you can redistribute it and/or modify it under
#  the terms of the GNU General Public License as published by the
#  Free Software Foundation, either version 3 of the License, or any
#  later version.
#
#  This program is distributed in the hope that it will be useful, but
#  WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#  See the GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program. If not, see <http://www.gnu.org/licenses/>.
#

TEXINPUTS:=./Resources/:./Resources/Packages/:./Resources/Bibliography/:$(TEXINPUTS)
export TEXINPUTS
BSTINPUTS:=./Resources/Bibliography/:$(BSTINPUTS)
export BSTINPUTS

SRC = $(wildcard *.tex)
ifndef TARGET
TARGET = main.tex
endif


.PHONY: all
all:
	@latexmk $(TARGET)

.PHONY: view
view:
	@latexmk -pv $(TARGET)

.PHONY: continuous
continuous:
	@latexmk -pvc $(TARGET)

.PHONY: clear
clear:
	@latexmk -c $(SRC)
	@rm -f *.log
	@rm -f *.aux
	@rm -f *.gz
	@rm -f *.out
	@rm -f *.fls
	@rm -f *.fdb
	@rm -f *.bbl
	@rm -f *.blg
	@rm -f ./Resources/ImagesTikZ/*.log
	@rm -f ./Resources/ImagesTikZ/*.gz
	@rm -f ./Resources/ImagesTikZ/*.aux

.PHONY: clearall
clearall:
	@latexmk -C $(SRC)
	@rm -f *.log
	@rm -f *.aux
	@rm -f *.gz
	@rm -f *.out
	@rm -f *.fls
	@rm -f *.fdb
	@rm -f *.bbl
	@rm -f *.blg
	@rm -f ./Resources/Externalised/*
	@rm -f ./Resources/ImagesTikZ/*.pdf

.PHONY: force
force:
	@latexmk -f $(SRC)

.PHONY: rebuild
rebuild: clear view 
