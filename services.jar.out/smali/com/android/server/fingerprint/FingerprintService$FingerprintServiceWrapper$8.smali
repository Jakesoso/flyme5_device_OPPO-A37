.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$cryptoClone:[B

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLcom/android/server/fingerprint/FingerprintService$ClientInfo;)V
    .locals 0

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$cryptoClone:[B

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$effectiveGroupId:I

    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$flags:I

    iput-boolean p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$restricted:Z

    iput-object p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$token:Landroid/os/IBinder;

    const/16 v2, 0x102

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->tryPreOperation(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$cryptoClone:[B

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$effectiveGroupId:I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$flags:I

    iget-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$restricted:Z

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$info:Lcom/android/server/fingerprint/FingerprintService$ClientInfo;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLcom/android/server/fingerprint/FingerprintService$ClientInfo;)V

    .line 2094
    :goto_0
    return-void

    .line 2092
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->notifyOperationCanceled(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    goto :goto_0
.end method