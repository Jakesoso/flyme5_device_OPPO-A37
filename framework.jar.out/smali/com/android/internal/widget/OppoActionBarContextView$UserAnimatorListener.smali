.class Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;
.super Ljava/lang/Object;
.source "OppoActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OppoActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserAnimatorListener"
.end annotation


# instance fields
.field private mShow:Z

.field final synthetic this$0:Lcom/android/internal/widget/OppoActionBarContextView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/OppoActionBarContextView;Z)V
    .locals 1
    .param p2, "show"    # Z

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->this$0:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->mShow:Z

    .line 621
    iput-boolean p2, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->mShow:Z

    .line 622
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->this$0:Lcom/android/internal/widget/OppoActionBarContextView;

    iget-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->mShow:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationCancel(Landroid/animation/Animator;Z)V

    .line 637
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->this$0:Lcom/android/internal/widget/OppoActionBarContextView;

    iget-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->mShow:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 632
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->this$0:Lcom/android/internal/widget/OppoActionBarContextView;

    iget-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->mShow:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationRepeat(Landroid/animation/Animator;Z)V

    .line 642
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->this$0:Lcom/android/internal/widget/OppoActionBarContextView;

    iget-boolean v1, p0, Lcom/android/internal/widget/OppoActionBarContextView$UserAnimatorListener;->mShow:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/OppoActionBarContextView;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 627
    return-void
.end method
