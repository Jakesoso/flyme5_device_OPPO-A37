.class public abstract Lcom/mediatek/mmsdk/CameraEffectImpl$DeviceStateCallback;
.super Lcom/mediatek/mmsdk/CameraEffect$StateCallback;
.source "CameraEffectImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeviceStateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/mediatek/mmsdk/CameraEffect$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 620
    return-void
.end method

.method public onBusy(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 628
    return-void
.end method

.method public onIdle(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 637
    return-void
.end method

.method public onUnconfigured(Lcom/mediatek/mmsdk/CameraEffect;)V
    .locals 0
    .param p1, "effect"    # Lcom/mediatek/mmsdk/CameraEffect;

    .prologue
    .line 616
    return-void
.end method
