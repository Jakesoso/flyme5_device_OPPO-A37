.class Lcom/color/widget/ColorMultiChoiceAdapter$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorMultiChoiceAdapter;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/color/widget/ColorMultiChoiceAdapter$9;->this$0:Lcom/color/widget/ColorMultiChoiceAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 238
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 239
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "target":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Landroid/view/View;

    .end local v0    # "target":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 244
    :cond_0
    return-void
.end method