��    &      L  5   |      P  `   Q  	   �  2   �  l   �  �   \  x        �     �     �  �   �  |   K  
   �     �  �   �  �   �  �        �  	   �     �  @   �  '   	  4   =	  -   r	  '   �	  
   �	  �   �	  p   V
     �
     �
     �
  5   �
  (   0  +   Y  -   �     �     �     �  #  �  p        �  G   �  �   �  �   U  f   2     �     �     �  �   �  �   T  
   �     �  �     �   �  �   l     (     E     R  Q   a  &   �  ,   �  8     (   @  
   i  �   t  �        �     �     �  O   �  (   3  +   \  -   �     �     �     �                                     &           #                                                       "   
   !   $                    	       %                                       After editing the file, all processes need to be restarted. To do this, you can either execute:: All done! Always start by checking the log files for errors. Any processes listed, should have the status ``RUNNING``. Stale or crashed processes can be restarted with:: Are you experiencing lots of unprocessed telegrams? You may have excessive data stored, causing a drag in performance. :doc:`More information can be found here<faq/data_throughput>`. Are you unable to resolve your problem or do you need any help? :doc:`More information can be found here<contributing>`. Backend Contact Contents DSMR-reader has DEBUG-logging, which makes the system log very verbosely about what it's trying to do. This applies **specifically** to the ``dsmr_backend`` process. DSMR-reader technically consists of these processes (some may or may not be used by you) and they are watched by Supervisor: Datalogger Each has its own log file(s): Errors are likely to be logged at all times, no matter the DEBUG-logging level used. Debugging is only helpful to watch DSMR-reader's detailed behaviour. If anything happens to fail or malfunction, please follow the steps below first to provide some background information when reporting an issue. If the processes do run, but you cannot find an error, (e.g.: things seem to hang or tend to be slow), there might be another issue at hand. It should now be:: Log files Logging levels Make sure you are ``dsmr`` user by executing ``sudo su - dsmr``. Now remove the ``###`` from this line:: Open the ``.env`` file and look for the code below:: Or go back to the **sudo user** and execute:: Or to restart them all simultaneously:: Supervisor The DEBUG-logging is disabled by default, to reduce writes on the filesystem. You can enable the logging by following these steps: The logfiles may be stale due to rotation. To see all logs for a process, try tailing a wildcard pattern, e.g.:: Troubleshooting Unprocessed telegrams Webinterface You can view the status of all processes by running:: ``/var/log/supervisor/dsmr_backend.log`` ``/var/log/supervisor/dsmr_datalogger.log`` ``/var/log/supervisor/dsmr_webinterface.log`` ``dsmr_backend`` ``dsmr_datalogger`` ``dsmr_webinterface`` Project-Id-Version: DSMR Reader 1.x
Report-Msgid-Bugs-To: 
Last-Translator: 
Language: nl
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
X-Generator: Poedit 2.0.6
 Na het bewerken van het bestand zul je alle processen moeten herstarten. Om dit te doen, voer het volgende uit:: Klaar! Je startpunt is altijd het bekijken van de logfiles voor foutmeldingen. Elk proces dat getoond wordt zou de status ``RUNNING`` moeten hebben. Hangende of gecrashde processen kunnen herstart worden met:: Heb je regelamtig last van onverwerkte telegrammen? Het kan zijn dat je een overvloed aan gegevens hebt opgeslagen, die inhakken op de performance. :doc:`Meer informatie daarover kun je hier vinden<faq/data_throughput>`. Kom je er toch niet uit of heb je hulp nodig? :doc:`Meer informatie kun je hier vinden<contributing>`. Backend Contact Inhoudsopgave DSMR-reader heeft DEBUG-logging, waarmee het systeem heel letterlijk logt wat het aan het doen is. Dit geldt **specifiek** voor het ``dsmr_backend`` proces. DSMR-reader bestaat technisch uit deze processen (sommigen zullen wel of niet in je eigen situatie gebruikt worden) en ze worden beheerd door Supervisor: Datalogger Elk heeft eigen logbestand(en): Fouten worden doorgaans altijd gelogd, ongeacht het logging niveau van DEBUG-level of niet. Debugging is alleen nuttig om het gedrag van DSMR-reader in meer detail te observeren. Wanneer er iets lijkt mis te gaan, volg de onderstaande stappen eerst, voordat je een issue aanmaakt. Hiermee kun je wat meer achtergrondinformatie aanleveren. Wanneer de processen lijken te draaien, maar je kunt geen fout vinden (bijvoorbeeld als telegrammen hangen of de verwerking traag lijkt), dan is er waarschijnlijk iets anders aan de hand. Het zou nu dit moeten zijn:: Logbestanden Logging levels Zorg ervoor dat je ``dsmr`` gebruiker bent door ``sudo su - dsmr`` uit te voeren. Verwijder nu de ``###`` uit de regel:: Open ``.env`` en zoek de onderstaande code:: Of ga terug naar de **sudo gebruiker** en voer dit uit:: Of herstart ze allemaal tegelijkertijd:: Supervisor De DEBUG-logging is standaard uitgeschakeld, om het aantal schrijfacties op het bestandssysteem te beperken. Je kunt het inschakelen door deze stappen te volgen: De logbestanden kunnen blijven hangen wegens rotatie. Probeer te tailen op een wildcard-patroon om alles logs van een proces te zien. Bijvoorbeeld:: Hulp bij problemen Onverwerkte telegrammen Webinterface Je kunt de status van alle processen bekijken door het volgende uit te voeren:: ``/var/log/supervisor/dsmr_backend.log`` ``/var/log/supervisor/dsmr_datalogger.log`` ``/var/log/supervisor/dsmr_webinterface.log`` ``dsmr_backend`` ``dsmr_datalogger`` ``dsmr_webinterface`` 