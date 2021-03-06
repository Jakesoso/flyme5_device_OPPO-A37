.class public Lcom/mediatek/bluetoothgatt/service/Ans;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Ans.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "1811"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Ans;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addAlertNotificationControlPoint()V
    .locals 6

    .prologue
    .line 168
    const/4 v1, 0x1

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_NOTIFICATION_CONTROL_POINT:Ljava/util/UUID;

    const/16 v3, 0x8

    const/16 v4, 0x10

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertNotificationControlPoint;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Ans;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 176
    return-void
.end method

.method addNewAlert()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 111
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_NEW_ALERT:Ljava/util/UUID;

    const/16 v3, 0x10

    const/4 v4, 0x0

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/NewAlert;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Ans;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 119
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Ans;->addDescriptor(ZLjava/util/UUID;I)V

    .line 125
    return-void
.end method

.method addSupportedNewAlertCategory()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 96
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SUPPORTED_NEW_ALERT_CATEGORY:Ljava/util/UUID;

    const/4 v3, 0x2

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedNewAlertCategory;->getValue()[B

    move-result-object v5

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Ans;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 104
    return-void
.end method

.method addSupportedUnreadAlertCategory()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 132
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_SUPPORTED_UNREAD_ALERT_CATEGORY:Ljava/util/UUID;

    const/4 v3, 0x2

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/SupportedUnreadAlertCategory;->getValue()[B

    move-result-object v5

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Ans;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 140
    return-void
.end method

.method addUnreadAlertStatus()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 147
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_UNREAD_ALERT_STATUS:Ljava/util/UUID;

    const/16 v3, 0x10

    const/4 v4, 0x0

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/UnreadAlertStatus;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Ans;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 155
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Ans;->addDescriptor(ZLjava/util/UUID;I)V

    .line 161
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Ans;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Ans;->addSupportedNewAlertCategory()V

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Ans;->addNewAlert()V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Ans;->addSupportedUnreadAlertCategory()V

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Ans;->addUnreadAlertStatus()V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Ans;->addAlertNotificationControlPoint()V

    .line 89
    return-void
.end method
