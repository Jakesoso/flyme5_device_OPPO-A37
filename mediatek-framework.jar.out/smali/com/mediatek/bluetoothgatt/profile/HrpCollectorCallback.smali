.class public Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;
.super Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;
.source "HrpCollectorCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HrpCollectorCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/profile/ClientBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 209
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 210
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 213
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v3, p2}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;-><init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 216
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onHrsHeartRateMeasurementNotify(Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v3, "HrpCollectorCallback"

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
    .line 75
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 76
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 79
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_BODY_SENSOR_LOCATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;-><init>()V

    .line 82
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 83
    if-nez p3, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 86
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onHrsBodySensorLocationReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;I)V

    .line 179
    :goto_0
    return-void

    .line 91
    :cond_1
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_DIS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 92
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;-><init>()V

    .line 94
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 95
    if-nez p3, :cond_2

    .line 96
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 98
    :cond_2
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisManufacturerNameStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;I)V

    goto :goto_0

    .line 101
    :cond_3
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;-><init>()V

    .line 103
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 104
    if-nez p3, :cond_4

    .line 105
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 107
    :cond_4
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisModelNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;I)V

    goto :goto_0

    .line 110
    :cond_5
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SERIAL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 111
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;-><init>()V

    .line 112
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 113
    if-nez p3, :cond_6

    .line 114
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 116
    :cond_6
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisSerialNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;I)V

    goto :goto_0

    .line 119
    :cond_7
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HARDWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 120
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;-><init>()V

    .line 121
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 122
    if-nez p3, :cond_8

    .line 123
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 125
    :cond_8
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisHardwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;I)V

    goto/16 :goto_0

    .line 128
    :cond_9
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 129
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;-><init>()V

    .line 130
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 131
    if-nez p3, :cond_a

    .line 132
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 134
    :cond_a
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisFirmwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/FirmwareRevisionString;I)V

    goto/16 :goto_0

    .line 137
    :cond_b
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 138
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;-><init>()V

    .line 139
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 140
    if-nez p3, :cond_c

    .line 141
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 143
    :cond_c
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisSoftwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;I)V

    goto/16 :goto_0

    .line 146
    :cond_d
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SYSTEM_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 147
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;-><init>()V

    .line 148
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 149
    if-nez p3, :cond_e

    .line 150
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 152
    :cond_e
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/SystemId;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisSystemIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SystemId;I)V

    goto/16 :goto_0

    .line 155
    :cond_f
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REG_CERT_DATA_LIST:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 156
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;-><init>()V

    .line 157
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 158
    if-nez p3, :cond_10

    .line 159
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 161
    :cond_10
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisRegCertDataListReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;I)V

    goto/16 :goto_0

    .line 164
    :cond_11
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_PNP_ID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 165
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;-><init>()V

    .line 166
    .restart local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 167
    if-nez p3, :cond_12

    .line 168
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 170
    :cond_12
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/PnpId;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onDisPnpIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/PnpId;I)V

    goto/16 :goto_0

    .line 177
    :cond_13
    const-string v3, "HrpCollectorCallback"

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
    .line 184
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 185
    .local v1, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 188
    .local v2, "srvcUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_CONTROL_POINT:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;-><init>()V

    .line 191
    .local v0, "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {v0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 192
    if-nez p3, :cond_0

    .line 193
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;->setValue([B)Z

    .line 195
    :cond_0
    check-cast v0, Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;

    .end local v0    # "base":Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onHrsHeartRateControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string v3, "HrpCollectorCallback"

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
    .line 230
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 231
    .local v0, "charUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 232
    .local v2, "srvcUuid":Ljava/util/UUID;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 234
    .local v1, "descrUuid":Ljava/util/UUID;
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onHrsHeartRateMeasurementCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v3, "HrpCollectorCallback"

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
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->SRVC_HRS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/bluetoothgatt/profile/HrpCollectorCallback;->onHrsHeartRateMeasurementCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v3, "HrpCollectorCallback"

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
    .line 343
    return-void
.end method

.method public onDisHardwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;I)V
    .locals 0
    .param p1, "hardwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/HardwareRevisionString;
    .param p2, "status"    # I

    .prologue
    .line 330
    return-void
.end method

.method public onDisManufacturerNameStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;I)V
    .locals 0
    .param p1, "manufacturerNameString"    # Lcom/mediatek/bluetoothgatt/characteristic/ManufacturerNameString;
    .param p2, "status"    # I

    .prologue
    .line 291
    return-void
.end method

.method public onDisModelNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;I)V
    .locals 0
    .param p1, "modelNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/ModelNumberString;
    .param p2, "status"    # I

    .prologue
    .line 304
    return-void
.end method

.method public onDisPnpIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/PnpId;I)V
    .locals 0
    .param p1, "pnpId"    # Lcom/mediatek/bluetoothgatt/characteristic/PnpId;
    .param p2, "status"    # I

    .prologue
    .line 395
    return-void
.end method

.method public onDisRegCertDataListReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;I)V
    .locals 0
    .param p1, "regCertDataList"    # Lcom/mediatek/bluetoothgatt/characteristic/RegCertDataList;
    .param p2, "status"    # I

    .prologue
    .line 382
    return-void
.end method

.method public onDisSerialNumberStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;I)V
    .locals 0
    .param p1, "serialNumberString"    # Lcom/mediatek/bluetoothgatt/characteristic/SerialNumberString;
    .param p2, "status"    # I

    .prologue
    .line 317
    return-void
.end method

.method public onDisSoftwareRevisionStringReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;I)V
    .locals 0
    .param p1, "softwareRevisionString"    # Lcom/mediatek/bluetoothgatt/characteristic/SoftwareRevisionString;
    .param p2, "status"    # I

    .prologue
    .line 356
    return-void
.end method

.method public onDisSystemIdReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/SystemId;I)V
    .locals 0
    .param p1, "systemId"    # Lcom/mediatek/bluetoothgatt/characteristic/SystemId;
    .param p2, "status"    # I

    .prologue
    .line 369
    return-void
.end method

.method public onHrsBodySensorLocationReadResponse(Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;I)V
    .locals 0
    .param p1, "bodySensorLocation"    # Lcom/mediatek/bluetoothgatt/characteristic/BodySensorLocation;
    .param p2, "status"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onHrsHeartRateControlPointWriteResponse(Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;I)V
    .locals 0
    .param p1, "heartRateControlPoint"    # Lcom/mediatek/bluetoothgatt/characteristic/HeartRateControlPoint;
    .param p2, "status"    # I

    .prologue
    .line 409
    return-void
.end method

.method public onHrsHeartRateMeasurementCccdReadResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 423
    return-void
.end method

.method public onHrsHeartRateMeasurementCccdWriteResponse(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 437
    return-void
.end method

.method public onHrsHeartRateMeasurementNotify(Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;)V
    .locals 0
    .param p1, "heartRateMeasurement"    # Lcom/mediatek/bluetoothgatt/characteristic/HeartRateMeasurement;

    .prologue
    .line 449
    return-void
.end method
