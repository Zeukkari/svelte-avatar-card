<style>

section {
  width: 100%;
  height: 100%;
}

svg g {
  transition: fill 1.4s ease-in-out, stroke-dashoffset 2s ease-in-out;
  fill: var(--theme-color);
}

svg g path {
  stroke-width: var(--stroke-width);
  stroke-dasharray: 8000;
  stroke-dashoffset: 0;
  animation: dash 1s linear forwards;
}

svg g path:hover {
  animation: dashBackwards 1s linear forwards;
}


@keyframes dash {
  from {
    stroke-dashoffset: 8000;
  }
  to {
    stroke-dashoffset: 0;
  }
}

@keyframes dashBackwards {
  from {
    stroke-dashoffset: 0;
  }
  to {
    stroke-dashoffset: 8000;
  }
}

</style>

<section>
<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
 width="150.000000pt" height="175.000000pt" viewBox="0 0 200.000000 200.000000">
<g transform="translate(0.000000,200.000000) scale(0.100000,-0.100000)"
fill="transparent" stroke="black" stroke-width="20" stroke-linecap="butt">
<path  d="M637 1929 c-54 -15 -86 -33 -153 -87 l-84 -67 -46 -139 -47 -140 6
-162 6 -161 93 -184 93 -184 3 -166 4 -165 -94 -121 c-51 -67 -112 -154 -135
-195 -24 -40 -54 -92 -69 -115 l-26 -43 516 0 516 0 -20 51 c-11 28 -36 75
-55 105 -40 62 -42 79 -18 129 20 42 69 74 127 81 36 5 46 2 82 -30 36 -30 42
-42 48 -88 11 -87 25 -127 51 -144 21 -14 26 -14 54 0 23 12 31 25 36 54 3 20
8 49 10 64 2 15 22 51 45 80 22 29 40 63 40 74 0 12 -13 54 -30 94 -35 86 -36
116 -10 270 19 112 20 116 56 145 95 76 98 80 85 104 -7 13 -46 68 -88 124
-50 69 -73 109 -70 122 2 11 10 47 17 80 l12 60 -49 125 c-42 108 -62 143
-143 252 -55 73 -106 131 -120 137 -57 22 -173 42 -300 51 -189 14 -265 12
-343 -11z"/>
</g>
</svg>
</section>
