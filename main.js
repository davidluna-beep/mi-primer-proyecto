// Animum Interactive Logic

document.addEventListener('DOMContentLoaded', () => {
    const ctaButton = document.getElementById('cta-button');

    if (ctaButton) {
        ctaButton.addEventListener('click', () => {
            alert('¡Gracias por tu interés! Estás explorando el primer proyecto de la auditoría.');
        });
    }

    // Scroll Effect for Navbar
    window.addEventListener('scroll', () => {
        const nav = document.getElementById('main-nav');
        if (window.scrollY > 50) {
            nav.style.padding = '1rem 0';
            nav.style.background = 'rgba(25, 12, 28, 0.95)';
        } else {
            nav.style.padding = '2rem 0';
            nav.style.background = 'rgba(25, 12, 28, 0.9)';
        }
    });

    console.log('Animum Premium Experience Loaded.');
});
