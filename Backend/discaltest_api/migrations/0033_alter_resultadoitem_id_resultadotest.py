# Generated by Django 3.2.7 on 2021-10-03 02:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('discaltest_api', '0032_auto_20211002_1434'),
    ]

    operations = [
        migrations.AlterField(
            model_name='resultadoitem',
            name='id_resultadoTest',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='discaltest_api.resultadotest', unique=True),
        ),
    ]
