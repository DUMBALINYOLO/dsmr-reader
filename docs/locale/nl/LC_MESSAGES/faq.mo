��    -      �  =   �      �  h   �  "   J  9   m  :   �  B   �  :   %  7   `  D   �  A   �  1     <   Q  W   �     �  	   �      �       8   8  #   q  %   �  /   �      �  <     +   I  F   u  w   �  #   4	  A   X	     �	     �	     �	  '   �	  E   
  W   U
  7   �
     �
  `   �
    T      W    x  �   �  X   -  K   �  �   �  Y   m  �  �  s   �  &     =   .  <   l  F   �  >   �  ;   /  E   k  E   �  5   �  @   -  X   n     �  
   �     �      �  >     &   Z  7   �  *   �  %   �  N   
  1   Y  E   �  �   �  %   T  O   z      �     �     �  !     P   8  h   �  @   �  
   3  ]   >    �  2   �  L  �  �   $  N   �  U     �   Z  \   �                                                          %   ,   -                )   '               *                       
      +   "                               (          #   	      &      !   $              *I've adjusted my energy prices but there are no changes! How can I regenerate them with my new prices?* :doc:`Env Settings<env_settings>`. :doc:`More information can be found here <faq/database>`. :doc:`More information can be found here <faq/downgrade>`. :doc:`More information can be found here <faq/restart_processes>`. :doc:`More information can be found here <faq/uninstall>`. :doc:`More information can be found here <faq/update>`. :doc:`More information can be found here <installation/datalogger>`. :doc:`More information can be found here <installation/restore>`. :doc:`More information can be found here <mqtt>`. :doc:`More information can be found here <troubleshooting>`. Configure ``DSMR_USER`` and ``DSMR_PASSWORD`` of the :doc:`Env Settings<env_settings>`. Contents Execute:: Frequently Asked Questions (FAQ) How can I check the logfiles? How can I create the (super)user or update its password? How can I downgrade my application? How can I move the database location? How can I restart the application or processes? How can I update my application? How can I use the datalogger only and forward the telegrams? How do I enable timezone support for MySQL? How do I fix errors such as ``DETAIL: Key (id)=(123) already exists``? How do I fix: ``Error: Already running on PID 1234 (or pid file '/var/tmp/gunicorn--dsmr_webinterface.pid' is stale)``? How do I restore a database backup? How do I retain MQTT support when upgrading to v1.23.0 or higher? How do I uninstall DSMR-reader? I need help! I'm not seeing any gas readings I've changed to a different smart meter If it does not resolve your issue, `ask for support <#i-need-help>`_. If you can't find the answer in the documentation, do not hesitate in looking for help. Just delete the PID file and restart the webinterface:: Now execute:: On recent versions it should be as simple as executing the following command as root/sudo user:: Please make sure that your meter supports reading gas consumption and that you've waited for a few hours for any graphs to render. The gas meter positions are only be updated once per hour (for DSMR v4). The Status page will give you insight in this as well. Recalculate prices retroactively Sometimes, when relocating or due to replacement of your meter, the meter positions read by DSMR-reader will cause invalid data (e.g.: big gaps or inverted consumption). Any consecutive days should not be affected by this issue, so you will only have to adjust the data for one day. The day after, you should be able to manually adjust any invalid Day or Hour Statistics :doc:`in the admin interface<configuration>` for the invalid day. The user should either be created or the existing user should have its password updated. This depends on the situation, but you can always try this yourself first:: `Check these docs <https://dev.mysql.com/doc/refman/5.7/en/mysql-tzinfo-to-sql.html>`_ for more information about how to enable timezone support on MySQL. `Create an issue at Github <https://github.com/dennissiemensma/dsmr-reader/issues/new>`_. Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
PO-Revision-Date: 2020-09-22 22:41+0200
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
X-Generator: Poedit 2.0.6
 *Ik heb zojuist mijn energieprijzen aangepast, maar ik zie geen verschil! Hoe kan ik de nieuwe prijzen doorvoeren?* :doc:`Env-instellingen<env_settings>`. :doc:`Meer informatie kun je hier terugvinden<faq/database>`. :doc:`Meer informatie kun je hier terugvindens<faq/update>`. :doc:`Meer informatie kun je hier terugvinden<faq/restart_processes>`. :doc:`Meer informatie kun je hier terugvinden<faq/uninstall>`. :doc:`Meer informatie kun je hier terugvinden<faq/update>`. :doc:`Meer informatie kun je hier terugvinden<installation/restore>`. :doc:`Meer informatie kun je hier terugvinden<installation/restore>`. :doc:`Meer informatie kun je hier terugvinden<mqtt>`. :doc:`Meer informatie kun je hier terugvinden<troubleshooting>`. Stel ``DSMR_USER`` en ``DSMR_PASSWORD`` in via de :doc:`Env-instellingen<env_settings>`. Inhoudsopgave Voer uit:: Veelgestelde vragen (FAQ) How kan ik de logfiles bekijken? Hoe kan ik de (admin)user aanmaken of het wachtwoord wijzigen? Hoe kan ik mijn applicatie downgraden? Hoe kan ik de locatie van de gegevensopslag veranderen? Hoe de applicatie of processen herstarten? Hoe kan ik mijn applicatie bijwerken? Hoe kan ik alleen de datalogger gebruiken voor het doorsturen van telegrammen? Hoe zet ik tijdzone-ondersteuning aan voor MySQL? Hoe los ik fouten op zoals ``DETAIL: Key (id)=(123) already exists``? Hoe los ik deze fout op: ``Error: Already running on PID 1234 (or pid file '/var/tmp/gunicorn--dsmr_webinterface.pid' is stale)``? Hoe zet ik een databaseback-up terug? Hoe behoud ik ondersteuning voor MQTT wanneer ik upgrade naar v1.23.0 of hoger? Hoe deinstalleer ik DSMR-reader? Ik heb hulp nodig! Ik zie geen gasverbruik Ik ben van slimme meter gewisseld Wanneer dat het probleem niet oplost,  `vraag om ondersteuning <#i-need-help>`_. Wanneer je de oplossing niet kan vinden in de documentatie, aarzel dan vooral niet om om hulp te vragen. Verwijder het genoemde PID-bestand en herstart de webinterface:: Voer uit:: Op recente versies kun je simpelweg het volgende commando als root/sudo-gebruiker uitvoeren:: Wees er allereerst zeker van dat je slimme meter uberhaupt gasverbruik registreert, en dat je een paar uur hebt gewacht. De gasmeterstanden worden sowieso slechts een keer per uur bijgewerkt (voor DSMR v4). De Status-pagina geeft je hier overigens ook inzicht in. Prijzen opnieuw berekenen met terugwerkende kracht Het komt soms voor dat, door verhuizing of technische vervanging van je meter, deze meterstanden in DSMR-reader voor afwijkingen en onjuiste gegevens zorgen (bijv.: grote gaten of negatief verbruik). Dit komt alleen voor bij de dag zelf en niet bij de dagen erna. Daarom zul je de gegevens van de foutieve dag zelf moeten aanpassen. De dag erna kun je dit zelf weer rechtzetten via de Dag- of Uurtotalen, :doc:`in de admin-configuratie<configuration>`, voor de betreffende dag. De gebruiker moet nu ofwel aangemaakt zijn ofwel het wachtwoord is bijgewerkt. Het hangt af van de situatie, maar je kunt het volgende sowieso zelf eerst proberen:: `Zie deze documentatie <https://dev.mysql.com/doc/refman/5.7/en/mysql-tzinfo-to-sql.html>`_ over hoe je tijdzone-ondersteuning inschakelt op MySQL. `Maak een issue aan op Github <https://github.com/dennissiemensma/dsmr-reader/issues/new>`_. 