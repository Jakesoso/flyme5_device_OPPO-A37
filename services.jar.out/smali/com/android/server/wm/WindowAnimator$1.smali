.class Lcom/android/server/wm/WindowAnimator$1;
.super Ljava/lang/Object;
.source "WindowAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    .line 147
    const-wide/16 v2, 0x20

    const-string v0, "wmAnimate"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$1;->this$0:Lcom/android/server/wm/WindowAnimator;

    # invokes: Lcom/android/server/wm/WindowAnimator;->animateLocked()V
    invoke-static {v0}, Lcom/android/server/wm/WindowAnimator;->access$000(Lcom/android/server/wm/WindowAnimator;)V

    .line 149
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
