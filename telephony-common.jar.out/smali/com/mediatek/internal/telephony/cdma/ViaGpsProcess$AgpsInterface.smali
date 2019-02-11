.class Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;
.super Ljava/lang/Object;
.source "ViaGpsProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AgpsInterface"
.end annotation


# static fields
.field private static final DATA_DISABLED:I = 0x0

.field private static final DATA_ENABLED_ON_CDMA_PHONE:I = 0x1

.field private static final DATA_ENABLED_ON_LTE_DC_PHONE:I = 0x1

.field private static final DATA_ENABLED_ON_OTHER_PHONE:I = 0x2

.field private static final EVENT_AGPS_CDMA_PHONE_STATUS:I = 0x2

.field private static final EVENT_AGPS_MOBILE_DATA_STATUS:I = 0x3

.field private static final EVENT_AGPS_NETWORK_TYPE:I = 0x1

.field private static final EVENT_AGPS_SET_NETWORK_ID:I = 0x4

.field private static final SOCKET_ADDRESS:Ljava/lang/String; = "c2kagpsd"

.field private static final TAG:Ljava/lang/String; = "VIA_GPS"


# instance fields
.field private mClient:Landroid/net/LocalSocket;

.field private mOut:Ljava/io/BufferedOutputStream;

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/content/Context;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 575
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mClient:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mClient:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mClient:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mClient:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 638
    :cond_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mClient:Landroid/net/LocalSocket;

    .line 639
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mClient:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "c2kagpsd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 642
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mClient:Landroid/net/LocalSocket;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 643
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mClient:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    .line 644
    return-void
.end method

.method private static putByte(Ljava/io/BufferedOutputStream;B)V
    .locals 0
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 658
    return-void
.end method

.method private static putInt(Ljava/io/BufferedOutputStream;I)V
    .locals 2
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 666
    and-int v0, p1, v1

    int-to-short v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 667
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    int-to-short v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 668
    return-void
.end method

.method private static putShort(Ljava/io/BufferedOutputStream;S)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 662
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 663
    return-void
.end method


# virtual methods
.method public setCDMAPhoneStatus(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 593
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->connect()V

    .line 594
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 595
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 596
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    .line 603
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    throw v1
.end method

.method public setMobileDataStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 621
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->connect()V

    .line 622
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 623
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 624
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    .line 631
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    throw v1
.end method

.method public setMobileNetworkType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 607
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->connect()V

    .line 608
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 609
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 610
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    .line 617
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    throw v1
.end method

.method public setNetworkId(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 579
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->connect()V

    .line 580
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 581
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 582
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->mOut:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    .line 589
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->close()V

    throw v1
.end method