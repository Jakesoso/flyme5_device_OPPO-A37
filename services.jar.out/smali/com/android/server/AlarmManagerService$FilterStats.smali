.class final Lcom/android/server/AlarmManagerService$FilterStats;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterStats"
.end annotation


# instance fields
.field aggregateTime:J

.field count:I

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mTag:Ljava/lang/String;

.field nesting:I

.field numWakeup:I

.field numWakeupWhenScreenoff:I

.field startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V
    .locals 1
    .param p1, "broadcastStats"    # Lcom/android/server/AlarmManagerService$BroadcastStats;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 733
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 736
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeupWhenScreenoff:I

    .line 738
    return-void
.end method
