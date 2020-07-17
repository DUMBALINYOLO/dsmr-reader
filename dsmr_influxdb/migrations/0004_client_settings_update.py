# Generated by Django 3.0.8 on 2020-07-16 19:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dsmr_influxdb', '0003_influxdb_outgoing_measurements'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='influxdbmeasurement',
            options={'verbose_name': 'Influxdb measurement', 'verbose_name_plural': 'Influxdb measurements'},
        ),
        migrations.AlterField(
            model_name='influxdbintegrationsettings',
            name='secure',
            field=models.CharField(choices=[('insecure', 'INSECURE - No HTTPS (default)'), ('secure_no_verify', 'SECURE (CERT_NONE) - HTTPS, but errors are ignored (untrusted or expired certificates)'), ('secure_and_verify', 'SECURE (CERT_REQUIRED) - HTTPS and requires a valid/trusted certificate')], default='insecure', help_text='Whether the client should use a secure connection. Select SECURE (CERT_NONE) for self-signed certificates.', max_length=24, verbose_name='Use secure connection (HTTPS)'),
        ),
    ]