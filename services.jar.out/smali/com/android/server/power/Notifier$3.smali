.class Lcom/android/server/power/Notifier$3;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleWakefulnessChange(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$3;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 459
    const/4 v0, 0x2

    .line 460
    .local v0, "why":I
    iget v1, p0, Lcom/android/server/power/Notifier$3;->val$reason:I

    sparse-switch v1, :sswitch_data_0

    .line 471
    :goto_0
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 478
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG_PANIC:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 480
    :cond_0
    const-string v1, "PowerManagerNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPolicy.goingToSleep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->goingToSleep(I)V

    iget-object v1, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    iget v3, p0, Lcom/android/server/power/Notifier$3;->val$reason:I

    invoke-static {v1, v3}, Lcom/android/server/power/Notifier$FlymeInjector;->notifyAccessControlGotoSleep(Lcom/android/server/power/Notifier;I)V

    .line 483
    return-void

    .line 462
    :sswitch_0
    const/4 v0, 0x1

    .line 463
    goto :goto_0

    .line 465
    :sswitch_1
    const/4 v0, 0x3

    .line 466
    goto :goto_0

    .line 468
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 460
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method
