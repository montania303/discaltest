# Generated by Django 3.2.7 on 2021-10-16 18:44

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('discaltest_api', '0036_resultadoitem'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entidad',
            name='id_usuario',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
