<script>
  import Slider from "./Slider.svelte";
  import Card from "./Card.svelte";

  let slider1 = 0;
  let slider2 = 0;
  let slider3 = 0;
  let slider4 = 0;

  let color = "#D3D3B8";
</script>

<style>
  :global(:root) {
    --card-transform: translateX(-100%) rotateY(-180deg);
    --rotateX: 0deg;
    --rotateY: 0deg;
    --rotateZ: 0deg;

    background: linear-gradient(to top, white, black);
  }
  main {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  aside {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
</style>

<main style="--theme-color: {color}">
  <Card rotateX={slider1} rotateY={slider2} rotateZ={slider3} />
</main>
<aside>

  <span>
    <input type="color" bind:value={color} style="height: 50px;" />
    fill color: {color}
  </span>
  <br />

  <label>Move these 👇</label>
  <br />

  <span>
    <Slider bind:prop={slider1} />
    X {slider1}
  </span>
  <br />

  <span>
    <Slider bind:prop={slider2} />
    Y {slider2}
  </span>
  <br />
  <span>
    <Slider bind:prop={slider3} />
    Z {slider3}
  </span>
  <br />

</aside>
