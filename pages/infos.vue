<script setup lang="ts">
</script>

<template>
  <div class="bg-[#1E1E1E] text-white min-h-screen px-8 py-12 space-y-12">

    <section>
      <AnimatedHeading text="INFOS FESTIVAL" className="text-white text-7xl font-BevellierBlack"/>
      <div class="space-y-6">
        <div>
          <h3 class="text-2xl font-semibold mb-2">Accès</h3>
          <p class="text-lg leading-relaxed">
            L’édition 2025 du festival Vibropolis se tiendra au Parc des Expositions de Troyes les 13, 14 et 15 juin 2025.
            Retrouvez toutes les informations pratiques dans la rubrique Transports.
            <br /><br />
            <strong>Adresse :</strong> 20 rue des Gayettes, 10000 Troyes.
          </p>
        </div>

        <div>
          <h3 class="text-2xl font-semibold mb-2">Plan</h3>
          <div class="rounded-lg overflow-hidden shadow-lg border border-gray-700">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2654.7036022681677!2d4.068410676746946!3d48.289317840584616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47ee98550b4a9593%3A0xcd8735cdb397a44e!2s20%20Rue%20des%20Gayettes%2C%2010000%20Troyes!5e0!3m2!1sfr!2sfr!4v1746450735692!5m2!1sfr!2sfr"
                width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>

        <div>
          <h3 class="text-2xl font-semibold mb-2">Horaires</h3>
          <p class="text-lg leading-relaxed">
            <strong>Ouverture des portes :</strong><br />
            Vendredi : 15h30<br />
            Samedi : 15h00<br />
            Dimanche : 15h00<br /><br />
            <strong>Fermeture des portes :</strong><br />
            Vendredi : 02h30<br />
            Samedi : 02h00<br />
            Dimanche : 02h00
          </p>
        </div>
      </div>
    </section>

    <section>
      <AnimatedHeading text="TRANSPORTS" className="text-white text-7xl font-BevellierBlack"/>

      <div class="space-y-6">
        <div>
          <h3 class="text-2xl font-semibold mb-2">En transport en commun</h3>
          <p class="text-lg leading-relaxed">
            <strong>Train :</strong> Depuis Paris, un train direct dessert la gare de Troyes en environ 1h30.<br />
            <strong>Bus :</strong> Empruntez la ligne 5 ou la ligne 7 du réseau TCAT et descendez à l'arrêt Parc Expos - Le Cube, situé à proximité immédiate du Parc.
          </p>
        </div>

        <div>
          <h3 class="text-2xl font-semibold mb-2">En voiture</h3>
          <p class="text-lg leading-relaxed">
            Le festival est accessible via l’autoroute A5, sortie Troyes Centre.
            Un parking payant sera aménagé à proximité du site avec un total de 4000 places.
            Un site internet sera disponible.<br />
            <strong>Pensez au covoiturage !</strong>
          </p>
        </div>

        <div>
          <h3 class="text-2xl font-semibold mb-2">En vélo</h3>
          <p class="text-lg leading-relaxed">
            Un parking vélo gratuit sera mis à disposition à l'entrée du festival.
            Des stations de location de vélos sont également disponibles dans le centre-ville de Troyes.
          </p>
        </div>
      </div>
    </section>

  </div>
</template>
