# Generated by Django 3.2.7 on 2021-09-20 03:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('discaltest_api', '0021_listaitems'),
    ]

    operations = [
        migrations.AlterField(
            model_name='resultadoitem',
            name='id_area',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='discaltest_api.area'),
        ),
        migrations.AlterField(
            model_name='resultadoitem',
            name='indicador',
            field=models.CharField(max_length=1, null=True),
        ),
        migrations.AlterField(
            model_name='resultadoitem',
            name='observacion',
            field=models.CharField(max_length=250, null=True),
        ),
        migrations.AlterField(
            model_name='resultadoitem',
            name='pObtenido',
            field=models.IntegerField(),
        ),
    ]
