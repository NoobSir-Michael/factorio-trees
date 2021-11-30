# Where to find Factorio files
FACTORIO_ROOT="/mnt/e/Program Files (x86)/Steam/steamapps/common/Factorio/"

# Output file format. PDF recommended.
# SVG can render tooltips - but they don't contain anything other than debug information.
OUTFORMAT=dot

# LUA interpreter
LUA=lua

# GraphViz commands (brew install graphviz)
DOT=dot
UNFLATTEN=unflatten


all: recipes-all.$(OUTFORMAT) recipes-filtered.$(OUTFORMAT) techtree-all.$(OUTFORMAT)

recipes-all.$(OUTFORMAT): recipes.lua utils.lua
	$(LUA) -e 'FACTORIO_ROOT=$(FACTORIO_ROOT)' recipes.lua | $(UNFLATTEN) | $(DOT) -T $(OUTFORMAT) -o $@

recipes-filtered.$(OUTFORMAT): recipes.lua utils.lua
	$(LUA) -e 'FACTORIO_ROOT=$(FACTORIO_ROOT)' -e 'FILTER=true' recipes.lua | $(UNFLATTEN) | $(DOT) -T $(OUTFORMAT) -o $@

techtree-all.$(OUTFORMAT): techtree.lua utils.lua
	$(LUA) -e 'FACTORIO_ROOT=$(FACTORIO_ROOT)' $? | $(DOT) -T $(OUTFORMAT) -o $@
	
clean:
	rm -f recipes-filtered.* recipes-all.* techtree-all.*
