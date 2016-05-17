main = ->
  for node in document.query-selector-all \.bigtext
    par = node.parent-node

    fs = 20
    while true
      if fs > 1000 or node.offset-width > 0.95 * par.offset-width
        break
      fs += 2
      node.style.font-size = fs + 'px'
    fs -= 2
    node.style.font-size = fs + 'px'
    node.style.line-height = (0.8 * fs) + 'px'
    node.style.display = \block

main!
