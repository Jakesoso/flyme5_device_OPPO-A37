.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->getFpIDs(Landroid/os/IBinder;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$PendingResult;I)V
    .locals 0

    .prologue
    .line 2399
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->val$token:Landroid/os/IBinder;

    const/16 v2, 0x111

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->tryPreOperation(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->val$userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->getFpIDs(I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->setResult(Ljava/lang/Object;)V

    .line 2407
    :goto_0
    return-void

    .line 2405
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$18;->val$r:Lcom/android/server/fingerprint/FingerprintService$PendingResult;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService$PendingResult;->cancel()V

    goto :goto_0
.end method
