// TODO: write your code here!
const updateCounter = (counter, count) => {
  counter.dataset.count = count;
  counter.innerText = count;
};

const updateInput = (priceCents) => {
  const input = document.getElementById('price-input');
  input.value = priceCents;

};

const updateCTA = (priceCents) => {
  const button = document.getElementById('ttl_price');
  button.innerText = `Total price: ${priceCents / 100}€`;
};

const updateForm = (event) => {
  const offset = Number.parseInt(event.currentTarget.dataset.offset, 10);
  const counter = document.getElementById('counter');
  const maxguests = document.getElementById('maxguests');
  const count = Number.parseInt(counter.dataset.count, 10) + offset;
  const unitPriceCents = document.getElementById('price').dataset.amountCents;
  const priceCents = unitPriceCents * count;
  if (count >= 1) {
    { }
    if (count <= maxguests.innerText) {
      updateCounter(counter, count);
      //updateInput(priceCents);
      updateCTA(priceCents);
      event.preventDefault();
    }
  } else {
    event.preventDefault();
  }
};

const updateFormOnButtonClick = (button) => {
  button.addEventListener('click', updateForm);
};

const loadSelector = () => {
  const buttons = document.querySelectorAll('.incrementer');
  buttons.forEach(updateFormOnButtonClick);
}

export { loadSelector };
