.class Lcom/android/server/BatteryService$Led$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$Led;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$Led;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    # setter for: Lcom/android/server/BatteryService$Led;->mScreenOn:Z
    invoke-static {v1, v4}, Lcom/android/server/BatteryService$Led;->access$1702(Lcom/android/server/BatteryService$Led;Z)Z

    .line 1252
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    # getter for: Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService$Led;->access$1800(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1254
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v1, v1, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowPowerSettingsObservers:Lcom/android/server/BatteryService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$SettingsObserver;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/BatteryService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1255
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v1, v1, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mChargeSettingsObservers:Lcom/android/server/BatteryService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$SettingsObserver;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/BatteryService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1258
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    # getter for: Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/BatteryService$Led;->access$2100(Lcom/android/server/BatteryService$Led;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/BatteryService$Led;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$1702(Lcom/android/server/BatteryService$Led;Z)Z

    .line 1262
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v1, v1, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowPowerSettingsObservers:Lcom/android/server/BatteryService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$SettingsObserver;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/BatteryService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1263
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v1, v1, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mChargeSettingsObservers:Lcom/android/server/BatteryService$SettingsObserver;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$SettingsObserver;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/BatteryService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1264
    iget-object v1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    # getter for: Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService$Led;->access$1800(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
