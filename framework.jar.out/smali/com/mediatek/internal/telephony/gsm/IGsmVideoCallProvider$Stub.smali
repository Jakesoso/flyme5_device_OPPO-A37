.class public abstract Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;
.super Landroid/os/Binder;
.source "IGsmVideoCallProvider.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

.field static final TRANSACTION_requestCallDataUsage:I = 0xa

.field static final TRANSACTION_requestCameraCapabilities:I = 0x9

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x7

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x8

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setCamera:I = 0x2

.field static final TRANSACTION_setDeviceOrientation:I = 0x5

.field static final TRANSACTION_setDisplaySurface:I = 0x4

.field static final TRANSACTION_setPauseImage:I = 0xb

.field static final TRANSACTION_setPreviewSurface:I = 0x3

.field static final TRANSACTION_setUIMode:I = 0xc

.field static final TRANSACTION_setZoom:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string v1, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider;

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 56
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 60
    :sswitch_0
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_1
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;

    move-result-object v0

    .line 68
    .local v0, "_arg0":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->setCallback(Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallCallback;
    :sswitch_2
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->setCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 89
    .local v0, "_arg0":Landroid/view/Surface;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_1

    .line 94
    .end local v0    # "_arg0":Landroid/view/Surface;
    :sswitch_4
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 102
    .restart local v0    # "_arg0":Landroid/view/Surface;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Landroid/view/Surface;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/Surface;
    goto :goto_2

    .line 107
    .end local v0    # "_arg0":Landroid/view/Surface;
    :sswitch_5
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->setDeviceOrientation(I)V

    goto :goto_0

    .line 115
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 118
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->setZoom(F)V

    goto :goto_0

    .line 123
    .end local v0    # "_arg0":F
    :sswitch_7
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 131
    .local v0, "_arg0":Landroid/telecom/VideoProfile;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_3

    .line 136
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_8
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 144
    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/telecom/VideoProfile;
    goto :goto_4

    .line 149
    .end local v0    # "_arg0":Landroid/telecom/VideoProfile;
    :sswitch_9
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->requestCameraCapabilities()V

    goto/16 :goto_0

    .line 155
    :sswitch_a
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->requestCallDataUsage()V

    goto/16 :goto_0

    .line 161
    :sswitch_b
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->setPauseImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v2, "com.mediatek.internal.telephony.gsm.IGsmVideoCallProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/IGsmVideoCallProvider$Stub;->setUIMode(I)V

    goto/16 :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
