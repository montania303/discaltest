# Generated by Django 3.2.7 on 2021-10-02 17:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('discaltest_api', '0028_alter_resultadoitem_id_area'),
    ]

    operations = [
        migrations.AlterField(
            model_name='resultadoitem',
            name='id_area',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='discaltest_api.area'),
        ),
    ]
