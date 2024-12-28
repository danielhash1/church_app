document.addEventListener('DOMContentLoaded', () => {
    const menuToggle = document.getElementById('menu-toggle');
    const mobileMenu = document.getElementById('mobile-menu');
    const header = document.getElementById('header');

    if (!menuToggle || !mobileMenu || !header) {
        console.warn('Menu toggle, mobile menu, or header not found in DOM');
        return;
    }

    const mobileLinks = mobileMenu.querySelectorAll('a');

    // Toggle mobile menu visibility
    menuToggle.addEventListener('click', () => {
        console.log('Menu toggle clicked');
        mobileMenu.classList.toggle('hidden');
    });

    // Close mobile menu when any link is clicked
    mobileLinks.forEach(link => {
        link.addEventListener('click', () => {
            mobileMenu.classList.add('hidden');
        });
    });

    // Close mobile menu when clicking outside of header
    document.addEventListener('click', (event) => {
        if (!header.contains(event.target) && !mobileMenu.classList.contains('hidden')) {
            mobileMenu.classList.add('hidden');
        }
    });
});

console.log('Header.js loaded');