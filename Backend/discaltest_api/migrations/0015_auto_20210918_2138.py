# Generated by Django 3.2.7 on 2021-09-19 01:38

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('discaltest_api', '0014_resultadoitem_resultadotest'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='resultadotest',
            name='id_alumno',
        ),
        migrations.RemoveField(
            model_name='resultadotest',
            name='id_profesor',
        ),
        migrations.DeleteModel(
            name='ResultadoItem',
        ),
        migrations.DeleteModel(
            name='ResultadoTest',
        ),
    ]