from django.apps import AppConfig
from django.utils.translation import gettext_lazy as _

import dsmr_backend.signals


class BackupAppConfig(AppConfig):
    name = 'dsmr_backup'
    verbose_name = _('Backup')

    def ready(self):
        dsmr_backend.signals.backend_called.connect(
            receiver=self._on_backend_called_signal,
            dispatch_uid=self.__class__
        )

    def _on_backend_called_signal(self, sender, **kwargs):
        # Import below prevents an AppRegistryNotReady error on Django init.
        import dsmr_dropbox.services

        dsmr_dropbox.services.sync()  # pragma: no cover
