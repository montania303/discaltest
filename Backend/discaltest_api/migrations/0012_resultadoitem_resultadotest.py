# Generated by Django 3.2.7 on 2021-09-17 01:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('discaltest_api', '0011_delete_resultadotest'),
    ]

    operations = [
        migrations.CreateModel(
            name='ResultadoTest',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, unique=True)),
                ('indicador', models.CharField(max_length=1, null=True)),
                ('observacion', models.CharField(max_length=250, null=True)),
                ('id_alumno', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='discaltest_api.alumnos')),
                ('id_profesor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='discaltest_api.profesor')),
            ],
        ),
        migrations.CreateModel(
            name='ResultadoItem',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, unique=True)),
                ('pObtenido', models.IntegerField(default=3)),
                ('indicador', models.CharField(max_length=1, null=True)),
                ('observacion', models.CharField(max_length=250, null=True)),
                ('id_area', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='discaltest_api.area')),
            ],
        ),
    ]
