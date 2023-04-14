from rest_framework import serializers
from .models import Clientes, Facturas, HistorialFacturas

class ClientesSerializers(serializers.ModelSerializer):
    class Meta:
        model = Clientes
        fields = '__all__'

class FacturasSerializers(serializers.ModelSerializer):
    class Meta:
        model = Facturas
        fields = '__all__'

class HistorialFacturasSerializers(serializers.ModelSerializer):
    class Meta:
        model = HistorialFacturas
        fields = '__all__'