.class Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OppoAppStartupManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoAppStartupManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OppoAppStartupManagerUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OppoAppStartupManagerUtils;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoAppStartupManagerUtils;

    .line 247
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 248
    iput-object p2, p0, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 249
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 255
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/startup_manager.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    # getter for: Lcom/android/server/am/OppoAppStartupManagerUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OppoAppStartupManagerUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEvent CLOSE_WRITE!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/server/am/OppoAppStartupManagerUtils$FileObserverPolicy;->this$0:Lcom/android/server/am/OppoAppStartupManagerUtils;

    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartupManagerUtils;->readStartupManagerFile()V

    .line 259
    invoke-static {}, Lcom/android/server/am/OppoAppStartupManager;->getInstance()Lcom/android/server/am/OppoAppStartupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OppoAppStartupManager;->updateBlacklist()V

    .line 262
    :cond_0
    return-void
.end method
