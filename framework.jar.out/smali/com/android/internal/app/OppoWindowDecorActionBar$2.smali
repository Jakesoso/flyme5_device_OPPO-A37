.class Lcom/android/internal/app/OppoWindowDecorActionBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoWindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoWindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoWindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationCancel(Landroid/animation/Animator;Z)V

    .line 194
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 198
    const/4 v0, 0x0

    const-string v1, "ActionBarTab:OppoWindowDecorActionBar"

    const-string v2, "doShow : onAnimationEnd"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/app/OppoWindowDecorActionBar;->setCurrentShowAnim(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$100(Lcom/android/internal/app/OppoWindowDecorActionBar;Landroid/animation/Animator;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 201
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationRepeat(Landroid/animation/Animator;Z)V

    .line 206
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/app/OppoWindowDecorActionBar$2;->this$0:Lcom/android/internal/app/OppoWindowDecorActionBar;

    # getter for: Lcom/android/internal/app/OppoWindowDecorActionBar;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/OppoWindowDecorActionBar;->access$000(Lcom/android/internal/app/OppoWindowDecorActionBar;)Lcom/android/internal/widget/OppoActionBarContextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 211
    return-void
.end method
