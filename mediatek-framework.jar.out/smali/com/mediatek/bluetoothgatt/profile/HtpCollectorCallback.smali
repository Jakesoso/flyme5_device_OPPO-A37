.class public Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;
.source "HtpCollectorCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HtpCollectorCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 220
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 223
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 226
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsTemperatureMeasurementNotify(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V

    .line 245
    :goto_0
    return-void

    .line 229
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_TEMPERATURE:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 231
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsIntermediateTemperatureNotify(Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;)V

    goto :goto_0

    .line 234
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 236
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsMeasurementIntervalNotify(Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;)V

    goto :goto_0

    .line 243
    :cond_2
    const-string v3, "HtpCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Characteristic UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dispatchCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 77
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 80
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_TYPE:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;-><init>()V

    .line 83
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 84
    if-nez p3, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 87
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsTemperatureTypeReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;I)V

    .line 189
    :goto_0
    return-void

    .line 90
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;-><init>()V

    .line 92
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 93
    if-nez p3, :cond_2

    .line 94
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 96
    :cond_2
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsMeasurementIntervalReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;I)V

    goto :goto_0

    .line 101
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 102
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;-><init>()V

    .line 104
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 105
    if-nez p3, :cond_4

    .line 106
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 108
    :cond_4
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisManufacturerNameStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;I)V

    goto :goto_0

    .line 111
    :cond_5
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 112
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;-><init>()V

    .line 113
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 114
    if-nez p3, :cond_6

    .line 115
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 117
    :cond_6
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisModelNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;I)V

    goto :goto_0

    .line 120
    :cond_7
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 121
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;-><init>()V

    .line 122
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 123
    if-nez p3, :cond_8

    .line 124
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 126
    :cond_8
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisSerialNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;I)V

    goto/16 :goto_0

    .line 129
    :cond_9
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 130
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;-><init>()V

    .line 131
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 132
    if-nez p3, :cond_a

    .line 133
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 135
    :cond_a
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisHardwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;I)V

    goto/16 :goto_0

    .line 138
    :cond_b
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 139
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;-><init>()V

    .line 140
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 141
    if-nez p3, :cond_c

    .line 142
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 144
    :cond_c
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisFirmwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;I)V

    goto/16 :goto_0

    .line 147
    :cond_d
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 148
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;-><init>()V

    .line 149
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 150
    if-nez p3, :cond_e

    .line 151
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 153
    :cond_e
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisSoftwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;I)V

    goto/16 :goto_0

    .line 156
    :cond_f
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 157
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;-><init>()V

    .line 158
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 159
    if-nez p3, :cond_10

    .line 160
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 162
    :cond_10
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisSystemIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SystemId;I)V

    goto/16 :goto_0

    .line 165
    :cond_11
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 166
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;-><init>()V

    .line 167
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 168
    if-nez p3, :cond_12

    .line 169
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 171
    :cond_12
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisRegCertDataListReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;I)V

    goto/16 :goto_0

    .line 174
    :cond_13
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 175
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;-><init>()V

    .line 176
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 177
    if-nez p3, :cond_14

    .line 178
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 180
    :cond_14
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onDisPnpIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/PnpId;I)V

    goto/16 :goto_0

    .line 187
    :cond_15
    const-string v3, "HtpCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Characteristic UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method dispatchCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 194
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 195
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 198
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;-><init>()V

    .line 201
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 202
    if-nez p3, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 205
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsMeasurementIntervalWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;I)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v3, "HtpCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Characteristic UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dispatchDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 250
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 251
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 252
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 254
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsTemperatureMeasurementCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 277
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_TEMPERATURE:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsIntermediateTemperatureCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0

    .line 263
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsMeasurementIntervalCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0

    .line 267
    :cond_2
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_VALID_RANGE:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsMeasurementIntervalVrdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0

    .line 275
    :cond_3
    const-string v3, "HtpCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Descriptor UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dispatchDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 282
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 283
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 284
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 286
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HTS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_TEMPERATURE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsTemperatureMeasurementCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 305
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_INTERMEDIATE_TEMPERATURE:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsIntermediateTemperatureCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0

    .line 295
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MEASUREMENT_INTERVAL:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HtpCollectorCallback;->onHtsMeasurementIntervalCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0

    .line 303
    :cond_2
    const-string v3, "HtpCollectorCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Descriptor UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisFirmwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;I)V
    .locals 0
    .param p1, "firmwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;
    .param p2, "status"    # I

    .prologue
    .line 396
    return-void
.end method

.method public onDisHardwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;I)V
    .locals 0
    .param p1, "hardwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;
    .param p2, "status"    # I

    .prologue
    .line 383
    return-void
.end method

.method public onDisManufacturerNameStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;I)V
    .locals 0
    .param p1, "manufacturerNameString"    # Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;
    .param p2, "status"    # I

    .prologue
    .line 344
    return-void
.end method

.method public onDisModelNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;I)V
    .locals 0
    .param p1, "modelNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;
    .param p2, "status"    # I

    .prologue
    .line 357
    return-void
.end method

.method public onDisPnpIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/PnpId;I)V
    .locals 0
    .param p1, "pnpId"    # Lcom/mediatek/bluetoothgatt/characteristic/PnpId;
    .param p2, "status"    # I

    .prologue
    .line 448
    return-void
.end method

.method public onDisRegCertDataListReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;I)V
    .locals 0
    .param p1, "regCertDataList"    # Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;
    .param p2, "status"    # I

    .prologue
    .line 435
    return-void
.end method

.method public onDisSerialNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;I)V
    .locals 0
    .param p1, "serialNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;
    .param p2, "status"    # I

    .prologue
    .line 370
    return-void
.end method

.method public onDisSoftwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;I)V
    .locals 0
    .param p1, "softwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;
    .param p2, "status"    # I

    .prologue
    .line 409
    return-void
.end method

.method public onDisSystemIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SystemId;I)V
    .locals 0
    .param p1, "systemId"    # Lcom/mediatek/bluetoothgatt/characteristic/SystemId;
    .param p2, "status"    # I

    .prologue
    .line 422
    return-void
.end method

.method public onHtsIntermediateTemperatureCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 489
    return-void
.end method

.method public onHtsIntermediateTemperatureCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 542
    return-void
.end method

.method public onHtsIntermediateTemperatureNotify(Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;)V
    .locals 0
    .param p1, "intermediateTemperature"    # Lcom/mediatek/bluetoothgatt/characteristic/IntermediateTemperature;

    .prologue
    .line 578
    return-void
.end method

.method public onHtsMeasurementIntervalCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 502
    return-void
.end method

.method public onHtsMeasurementIntervalCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 555
    return-void
.end method

.method public onHtsMeasurementIntervalNotify(Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;)V
    .locals 0
    .param p1, "measurementInterval"    # Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;

    .prologue
    .line 589
    return-void
.end method

.method public onHtsMeasurementIntervalReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;I)V
    .locals 0
    .param p1, "measurementInterval"    # Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;
    .param p2, "status"    # I

    .prologue
    .line 331
    return-void
.end method

.method public onHtsMeasurementIntervalVrdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 515
    return-void
.end method

.method public onHtsMeasurementIntervalWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;I)V
    .locals 0
    .param p1, "measurementInterval"    # Lcom/mediatek/bluetoothgatt/characteristic/MeasurementInterval;
    .param p2, "status"    # I

    .prologue
    .line 462
    return-void
.end method

.method public onHtsTemperatureMeasurementCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 476
    return-void
.end method

.method public onHtsTemperatureMeasurementCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 529
    return-void
.end method

.method public onHtsTemperatureMeasurementNotify(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;)V
    .locals 0
    .param p1, "temperatureMeasurement"    # Lcom/mediatek/bluetoothgatt/characteristic/TemperatureMeasurement;

    .prologue
    .line 567
    return-void
.end method

.method public onHtsTemperatureTypeReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;I)V
    .locals 0
    .param p1, "temperatureType"    # Lcom/mediatek/bluetoothgatt/characteristic/TemperatureType;
    .param p2, "status"    # I

    .prologue
    .line 318
    return-void
.end method
