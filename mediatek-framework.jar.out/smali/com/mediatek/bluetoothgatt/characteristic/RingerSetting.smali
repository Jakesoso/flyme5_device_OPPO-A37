.class public Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "RingerSetting.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;

.field public static final RS_RINGER_NORMAL:I = 0x1

.field public static final RS_RINGER_SILENT:I


# instance fields
.field private mRingerSetting:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "2A41"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setRingerSetting(I)Z

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "ringerSetting"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setRingerSetting(I)Z

    .line 125
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "ringerSetting"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    .line 136
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setRingerSetting(I)Z

    .line 138
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setValue([B)Z

    .line 103
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    .line 112
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setValue([B)Z

    .line 114
    return-void
.end method


# virtual methods
.method public getRingerSetting()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 172
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 174
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->isSupportRingerSetting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    array-length v1, v3

    .line 176
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 177
    add-int/2addr v0, v1

    .line 180
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportRingerSetting()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->isSupportRingerSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRingerSetting(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 225
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->bit8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToBit8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    .line 229
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->updateGattCharacteristic()V

    .line 230
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->isSupportRingerSetting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    array-length v0, v3

    .line 196
    .local v0, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    .end local v0    # "fieldLen":I
    :goto_0
    return v2

    .line 200
    .restart local v0    # "fieldLen":I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->mRingerSetting:[B

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 201
    add-int/2addr v1, v0

    .line 204
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->updateGattCharacteristic()V

    .line 205
    const/4 v2, 0x1

    goto :goto_0
.end method
