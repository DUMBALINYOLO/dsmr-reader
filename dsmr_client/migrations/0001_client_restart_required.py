# Generated by Django 3.0.7 on 2020-07-14 19:23

from django.db import migrations, models
import dsmr_backend.mixins


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ContinuousClientSettings',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('restart_required', models.BooleanField(default=False, help_text='Whether the process requires a restart, forcing all continuous clients to reset and reconnect.', verbose_name='Restart required')),
            ],
            options={
                'verbose_name': 'Client process settings',
                'default_permissions': (),
            },
            bases=(dsmr_backend.mixins.ModelUpdateMixin, models.Model),
        ),
    ]