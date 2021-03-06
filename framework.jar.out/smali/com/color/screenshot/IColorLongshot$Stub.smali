.class public abstract Lcom/color/screenshot/IColorLongshot$Stub;
.super Landroid/os/Binder;
.source "IColorLongshot.java"

# interfaces
.implements Lcom/color/screenshot/IColorLongshot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/screenshot/IColorLongshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/screenshot/IColorLongshot$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.color.screenshot.IColorLongshot"

.field static final TRANSACTION_isHandleState:I = 0x4

.field static final TRANSACTION_isMoveState:I = 0x3

.field static final TRANSACTION_notifyScroll:I = 0x2

.field static final TRANSACTION_setSupport:I = 0x5

.field static final TRANSACTION_start:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.color.screenshot.IColorLongshot"

    invoke-virtual {p0, p0, v0}, Lcom/color/screenshot/IColorLongshot$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/color/screenshot/IColorLongshot;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.color.screenshot.IColorLongshot"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/color/screenshot/IColorLongshot;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/color/screenshot/IColorLongshot;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/color/screenshot/IColorLongshot$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/color/screenshot/IColorLongshot$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "com.color.screenshot.IColorLongshot"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.color.screenshot.IColorLongshot"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/color/screenshot/IColorScreenshotCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/color/screenshot/IColorScreenshotCallback;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Lcom/color/screenshot/IColorScreenshotCallback;
    invoke-virtual {p0, v0}, Lcom/color/screenshot/IColorLongshot$Stub;->start(Lcom/color/screenshot/IColorScreenshotCallback;)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Lcom/color/screenshot/IColorScreenshotCallback;
    :sswitch_2
    const-string v3, "com.color.screenshot.IColorLongshot"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 61
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/screenshot/IColorLongshot$Stub;->notifyScroll(Z)V

    goto :goto_0

    .line 66
    .end local v0    # "_arg0":Z
    :sswitch_3
    const-string v3, "com.color.screenshot.IColorLongshot"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/color/screenshot/IColorLongshot$Stub;->isMoveState()Z

    move-result v1

    .line 68
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v3, "com.color.screenshot.IColorLongshot"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/color/screenshot/IColorLongshot$Stub;->isHandleState()Z

    move-result v1

    .line 76
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v1    # "_result":Z
    :sswitch_5
    const-string v3, "com.color.screenshot.IColorLongshot"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 85
    .restart local v0    # "_arg0":Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/color/screenshot/IColorLongshot$Stub;->setSupport(Z)V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
