.class Lcom/android/server/BatteryService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 1179
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1180
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1183
    iget-object v1, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1184
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "oppo_breath_led_low_power"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1186
    const-string v1, "oppo_breath_led_charge"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1188
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1189
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1193
    invoke-virtual {p0, p2}, Lcom/android/server/BatteryService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1194
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1197
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1198
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    const-string v5, "oppo_breath_led_low_power"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1199
    :cond_0
    const-string v5, "oppo_breath_led_low_power"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 1201
    .local v1, "lowePowerEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    if-eq v5, v1, :cond_1

    .line 1202
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v5

    iput-boolean v1, v5, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    .line 1203
    iget-object v5, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1206
    .end local v1    # "lowePowerEnabled":Z
    :cond_1
    if-eqz p1, :cond_2

    const-string v5, "oppo_breath_led_charge"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1207
    :cond_2
    const-string v5, "oppo_breath_led_charge"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 1209
    .local v0, "chargeEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    if-eq v3, v0, :cond_3

    .line 1210
    iget-object v3, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v3

    iput-boolean v0, v3, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    .line 1211
    iget-object v3, p0, Lcom/android/server/BatteryService$SettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1214
    .end local v0    # "chargeEnabled":Z
    :cond_3
    return-void

    :cond_4
    move v1, v4

    .line 1199
    goto :goto_0

    :cond_5
    move v0, v4

    .line 1207
    goto :goto_1
.end method
