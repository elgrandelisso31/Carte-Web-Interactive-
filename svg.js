const rects = document.querySelectorAll("rect"); // Sélectionner toutes les cases SVG

// Parcourir chaque case SVG et ajouter un gestionnaire d'événement 'mouseover'
rects.forEach((rect) => {
  rect.addEventListener("mouseover", () => {
    console.log(rect.id); // Afficher l'ID de la case SVG survolée dans la console
  });
});
