import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Preserve yourself.. and choose your bunker!", "Better safe than sorry"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
