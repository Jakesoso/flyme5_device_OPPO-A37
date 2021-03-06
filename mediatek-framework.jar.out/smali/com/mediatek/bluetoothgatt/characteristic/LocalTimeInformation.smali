.class public Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "LocalTimeInformation.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

.field private mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "2A0F"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)V
    .locals 1
    .param p1, "timeZone"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;
    .param p2, "daylightSavingTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setTimeZone(Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;)Z

    .line 125
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setDaylightSavingTime(Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)Z

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "timeZone"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;
    .param p2, "daylightSavingTime"    # Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 139
    invoke-virtual {p0, p3}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setTimeZone(Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;)Z

    .line 141
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setDaylightSavingTime(Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)Z

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setTimeZone(Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;)Z

    .line 154
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setDaylightSavingTime(Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setValue([B)Z

    .line 101
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 75
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    .line 82
    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .line 110
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setValue([B)Z

    .line 112
    return-void
.end method


# virtual methods
.method public getDaylightSavingTime()Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    return-object v0
.end method

.method public getTimeZone()Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 189
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 191
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->isSupportTimeZone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->length()I

    move-result v1

    .line 193
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 194
    add-int/2addr v0, v1

    .line 197
    .end local v1    # "fieldLen":I
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->isSupportDaylightSavingTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->length()I

    move-result v1

    .line 199
    .restart local v1    # "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v3}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->getValue()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 200
    add-int/2addr v0, v1

    .line 203
    .end local v1    # "fieldLen":I
    :cond_1
    return-object v2
.end method

.method public isSupportDaylightSavingTime()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTimeZone()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->isSupportTimeZone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->isSupportDaylightSavingTime()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->length()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setDaylightSavingTime(Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->updateGattCharacteristic()V

    .line 334
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDaylightSavingTime([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->updateGattCharacteristic()V

    .line 319
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTimeZone(Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;)Z
    .locals 2
    .param p1, "value"    # Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-virtual {p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->updateGattCharacteristic()V

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTimeZone([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setValue([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->updateGattCharacteristic()V

    .line 271
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([B)Z
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v3, 0x0

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->isSupportTimeZone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    iget-object v4, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-virtual {v4}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->length()I

    move-result v1

    .line 219
    .local v1, "fieldLen":I
    array-length v4, p1

    invoke-virtual {p0, v4, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setValueRangeCheck(III)Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    .end local v1    # "fieldLen":I
    :cond_0
    :goto_0
    return v3

    .line 223
    .restart local v1    # "fieldLen":I
    :cond_1
    new-array v0, v1, [B

    .line 225
    .local v0, "buf":[B
    array-length v4, v0

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 226
    add-int/2addr v2, v1

    .line 228
    iget-object v4, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mTimeZone:Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;

    invoke-virtual {v4, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TimeZone;->setValue([B)Z

    .line 231
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->isSupportDaylightSavingTime()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    iget-object v4, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v4}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->length()I

    move-result v1

    .line 234
    .restart local v1    # "fieldLen":I
    array-length v4, p1

    invoke-virtual {p0, v4, v2, v1}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->setValueRangeCheck(III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    new-array v0, v1, [B

    .line 240
    .restart local v0    # "buf":[B
    array-length v4, v0

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 241
    add-int/2addr v2, v1

    .line 243
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->mDaylightSavingTime:Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;

    invoke-virtual {v3, v0}, Lcom/mediatek/bluetoothgatt/characteristic/DstOffset;->setValue([B)Z

    .line 246
    .end local v0    # "buf":[B
    .end local v1    # "fieldLen":I
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->updateGattCharacteristic()V

    .line 247
    const/4 v3, 0x1

    goto :goto_0
.end method
