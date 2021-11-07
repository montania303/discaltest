# Generated by Django 3.2.7 on 2021-10-02 18:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('discaltest_api', '0030_delete_resultadoitem'),
    ]

    operations = [
        migrations.CreateModel(
            name='ResultadoItem',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, unique=True)),
                ('pObtenido', models.IntegerField()),
                ('indicador', models.CharField(max_length=1, null=True)),
                ('observacion', models.CharField(max_length=250, null=True)),
                ('id_area', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='discaltest_api.area')),
                ('id_resultadoTest', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='discaltest_api.resultadotest')),
            ],
        ),
    ]