.class public Lcom/mediatek/bluetoothgatt/service/Cts;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Cts.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "1805"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Cts;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addCurrentTime()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 92
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_CURRENT_TIME:Ljava/util/UUID;

    const/16 v3, 0x12

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/CurrentTime;->getValue()[B

    move-result-object v5

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Cts;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 101
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Cts;->addDescriptor(ZLjava/util/UUID;I)V

    .line 107
    return-void
.end method

.method addLocalTimeInformation()V
    .locals 6

    .prologue
    .line 114
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_LOCAL_TIME_INFORMATION:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/LocalTimeInformation;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Cts;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 122
    return-void
.end method

.method addReferenceTimeInformation()V
    .locals 6

    .prologue
    .line 129
    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_REFERENCE_TIME_INFORMATION:Ljava/util/UUID;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/ReferenceTimeInformation;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Cts;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 137
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Cts;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Cts;->addCurrentTime()V

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Cts;->addLocalTimeInformation()V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Cts;->addReferenceTimeInformation()V

    .line 85
    return-void
.end method
