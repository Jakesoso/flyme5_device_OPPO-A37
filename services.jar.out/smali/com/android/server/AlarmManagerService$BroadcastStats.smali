.class final Lcom/android/server/AlarmManagerService$BroadcastStats;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BroadcastStats"
.end annotation


# instance fields
.field aggregateTime:J

.field count:I

.field final filterStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$FilterStats;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageName:Ljava/lang/String;

.field final mUid:I

.field nesting:I

.field numWakeup:I

.field numWakeupWhenScreenoff:I

.field startTime:J

.field wakeupCountStartTime:J


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 758
    iput p1, p0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    .line 759
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeupWhenScreenoff:I

    .line 763
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$BroadcastStats;->wakeupCountStartTime:J

    .line 765
    return-void
.end method
