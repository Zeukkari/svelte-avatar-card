<script>
  export let prop;
</script>

<style>

.slider {
  right: 10px;
  top: 10px;
  display: inline;
}
.slider > * {
  display: inline;
}

</style>

<div class="slider">
	<input class="booth-slider" type="range" min="0" max="180" value="0" step="1" bind:value="{prop}">
</div>
