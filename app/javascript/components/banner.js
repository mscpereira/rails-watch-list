import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Drama🎭", "Comedy😂", "Horrorrrr😱", "Netflix▶️", "...", "You create your lists!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
