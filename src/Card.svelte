<script>
  import Grafiikka from './SvgAvatar.svelte'
  import Grafiikka2 from './SvgLabel.svelte'

  export let rotateX;
  export let rotateY;
  export let rotateZ;

  let card = document.querySelector(".card");

  function handleClick() {
    let card = document.querySelector(".card");
    let value = card.getAttribute("data-is-flipped");
    if (value === "true") {
      card.setAttribute("data-is-flipped", "false");
    } else {
      card.setAttribute("data-is-flipped", "true");
    }
  }

</script>

<style>
  .scene {
    width: 200px;
    height: 260px;
    border: 1px solid #ccc;
    margin: 40px 0;
    perspective: 600px;
    outline: thick double #000000;
  }

  .card {
    position: relative;
    width: 100%;
    height: 100%;
    cursor: pointer;
    transform-style: preserve-3d;
    transform-origin: center right;
    transition: transform 1s;
    transform-origin: center;
    transform: perspective(500px) rotateX(var(--rotateX)) rotateY(var(--rotateY)) rotateZ(var(--rotateZ));
    transition: transform 0.3s
  }

  .card__face {
    position: absolute;
    width: 100%;
    height: 100%;
    line-height: 260px;
    color: white;
    text-align: center;
    font-weight: bold;
    font-size: 40px;
    backface-visibility: hidden;
  }

  .card__face--front {
    background: white;
  }

  .card__face--back {
    background: white;
    transform: rotateY(-180deg);
  }
</style>

<div class="scene scene--card">
  <div class="card" style="--rotateX:{rotateX}deg; --rotateY:{rotateY}deg; --rotateZ:{rotateZ}deg; ">
    <div class="card__face card__face--front"><Grafiikka/></div>
    <div class="card__face card__face--back"><Grafiikka2/></div>
  </div>
</div>

