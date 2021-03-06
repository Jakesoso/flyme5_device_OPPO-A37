.class public Lcom/oppo/widget/OppoMultiChoiceAdapter;
.super Lcom/oppo/widget/OppoDecoratorAdapter;
.source "OppoMultiChoiceAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;,
        Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;,
        Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;,
        Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;,
        Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final DEFAULT_FINAL_VISIBILITY:I = -0x1

.field private static final DEFAULT_FLOW_LAYOUT:I = 0xc090436

.field private static final TAG:Ljava/lang/String; = "OppoMultiChoiceAdapter"

.field private static final TAG_BOTTOM_IN:Ljava/lang/String; = "BottomIn"

.field private static final TAG_BOTTOM_OUT:Ljava/lang/String; = "BottomOut"

.field private static final TAG_EXTRA_IN:Ljava/lang/String; = "ExtraIn"

.field private static final TAG_EXTRA_OUT:Ljava/lang/String; = "ExtraOut"

.field private static final TAG_FADE_IN:Ljava/lang/String; = "FadeIn"

.field private static final TAG_FADE_OUT:Ljava/lang/String; = "FadeOut"

.field private static final TAG_FLOW_IN:Ljava/lang/String; = "FlowIn"

.field private static final TAG_FLOW_OUT:Ljava/lang/String; = "FlowOut"

.field private static final TAG_RIGHT_IN:Ljava/lang/String; = "RightIn"

.field private static final TAG_RIGHT_OUT:Ljava/lang/String; = "RightOut"

.field private static mFlowView:Lcom/oppo/widget/OppoOptionMenuBar;


# instance fields
.field private mActionBarShow:Z

.field private mActionMode:Landroid/view/ActionMode;

.field mActivity:Landroid/app/Activity;

.field mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mAlphaListener:Landroid/animation/Animator$AnimatorListener;

.field private mBottomIn:Lcom/oppo/util/OppoAnimatorHelper;

.field private mBottomOut:Lcom/oppo/util/OppoAnimatorHelper;

.field private mBottomView:Landroid/view/View;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field mChoiceAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mDurationChoice:J

.field mDurationRemove:J

.field private mEndListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnding:Z

.field private mExtraIn:Lcom/oppo/util/OppoAnimatorHelper;

.field private mExtraOut:Lcom/oppo/util/OppoAnimatorHelper;

.field private mExtraView:Landroid/view/View;

.field private mFinishing:Z

.field private mFlowIn:Lcom/oppo/util/OppoAnimatorHelper;

.field private mFlowOut:Lcom/oppo/util/OppoAnimatorHelper;

.field private mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mInterpolatorBottomIn:Landroid/view/animation/Interpolator;

.field mInterpolatorBottomOut:Landroid/view/animation/Interpolator;

.field mInterpolatorFadeIn:Landroid/view/animation/Interpolator;

.field mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

.field mInterpolatorRightIn:Landroid/view/animation/Interpolator;

.field mInterpolatorRightOut:Landroid/view/animation/Interpolator;

.field private mMajorVisibility:I

.field mMakeFadeIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

.field mMakeFadeOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

.field mMakeRightIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

.field mMakeRightOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

.field mRemoveAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mRightAnimation:Z

.field private mRightDependency:I

.field private mSetValuesBottomIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

.field private mSetValuesBottomOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

.field private mSetValuesFadeIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

.field private mSetValuesFadeOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

.field private mSetValuesRightIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

.field private mSetValuesRightOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

.field private mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mStarting:Z

.field mTranslationXListener:Landroid/animation/Animator$AnimatorListener;

.field mTranslationYListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowView:Lcom/oppo/widget/OppoOptionMenuBar;

    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;)V
    .locals 8
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "bottomView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Landroid/app/Activity;",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<Landroid/widget/ListAdapter;>;"
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 386
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDecoratorAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 91
    iput-wide v6, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDurationChoice:J

    .line 92
    iput-wide v6, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDurationRemove:J

    .line 93
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorBottomIn:Landroid/view/animation/Interpolator;

    .line 94
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorBottomOut:Landroid/view/animation/Interpolator;

    .line 95
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorRightIn:Landroid/view/animation/Interpolator;

    .line 96
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorRightOut:Landroid/view/animation/Interpolator;

    .line 97
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorFadeIn:Landroid/view/animation/Interpolator;

    .line 98
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

    .line 99
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    .line 100
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAdapterView:Landroid/widget/AdapterView;

    .line 101
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;

    invoke-direct {v0, p0, v4}, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeRightIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .line 102
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;

    invoke-direct {v0, p0, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter$RightAnimatorMaker;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeRightOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .line 103
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;

    invoke-direct {v0, p0, v4}, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeFadeIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .line 104
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;

    invoke-direct {v0, p0, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter$FadeAnimatorMaker;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeFadeOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRemoveAnimators:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$1;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mTranslationXListener:Landroid/animation/Animator$AnimatorListener;

    .line 118
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$2;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$2;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mTranslationYListener:Landroid/animation/Animator$AnimatorListener;

    .line 129
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$3;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$3;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAlphaListener:Landroid/animation/Animator$AnimatorListener;

    .line 145
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    .line 146
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraView:Landroid/view/View;

    .line 147
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 148
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    .line 149
    iput v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMajorVisibility:I

    .line 150
    iput v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRightDependency:I

    .line 151
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionBarShow:Z

    .line 152
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mStarting:Z

    .line 153
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFinishing:Z

    .line 154
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEnding:Z

    .line 155
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRightAnimation:Z

    .line 156
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomIn:Lcom/oppo/util/OppoAnimatorHelper;

    .line 157
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomOut:Lcom/oppo/util/OppoAnimatorHelper;

    .line 158
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowIn:Lcom/oppo/util/OppoAnimatorHelper;

    .line 159
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowOut:Lcom/oppo/util/OppoAnimatorHelper;

    .line 160
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraIn:Lcom/oppo/util/OppoAnimatorHelper;

    .line 161
    iput-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraOut:Lcom/oppo/util/OppoAnimatorHelper;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceViews:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEndListeners:Ljava/util/List;

    .line 164
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$4;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$4;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 176
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$5;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 205
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$6;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$6;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesFadeIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .line 213
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$7;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$7;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesFadeOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .line 221
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$8;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$8;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesRightIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .line 229
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$9;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$9;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesRightOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .line 237
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$10;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$10;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesBottomIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .line 245
    new-instance v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$11;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$11;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesBottomOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    .line 387
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your adapter must implement interface com.oppo.widget.OppoMultiChoiceAdapter.Choosable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->initFromResources(Landroid/content/Context;)V

    .line 392
    invoke-direct {p0, p3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->initAdapterView(Landroid/widget/AdapterView;)Landroid/widget/AdapterView;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAdapterView:Landroid/widget/AdapterView;

    .line 393
    iput-object p2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    .line 394
    invoke-direct {p0, p4}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->initBottomView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    .line 395
    const v0, 0xc090436

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->createFlowView(I)Lcom/oppo/widget/OppoOptionMenuBar;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowView:Lcom/oppo/widget/OppoOptionMenuBar;

    .line 396
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getActionBarShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->setActionBarShow(Z)V

    .line 397
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->initActionBar()V

    .line 398
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getBottomInVisibility()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IZ)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomIn:Lcom/oppo/util/OppoAnimatorHelper;

    .line 399
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getBottomOutVisibility()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IZ)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomOut:Lcom/oppo/util/OppoAnimatorHelper;

    .line 400
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowView:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getFlowInVisibility()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IZ)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    new-instance v1, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$12;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V

    invoke-virtual {v0, v1}, Lcom/oppo/util/OppoAnimatorHelper;->addListener(Landroid/animation/Animator$AnimatorListener;)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowIn:Lcom/oppo/util/OppoAnimatorHelper;

    .line 411
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowView:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getFlowOutVisibility()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IZ)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowOut:Lcom/oppo/util/OppoAnimatorHelper;

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEnding:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoMultiChoiceAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEnding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getChoiceAnimators()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->showBottomExtra(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->showMajorGroup(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->updateMenuBar(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesFadeIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesFadeOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->createFadeAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoMultiChoiceAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    iget v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRightDependency:I

    return v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesRightIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesRightOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoMultiChoiceAdapter;ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->createRightAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoMultiChoiceAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoMultiChoiceAdapter;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraView:Landroid/view/View;

    return-object v0
.end method

.method private addChoiceAnimators(Z)V
    .locals 2
    .param p1, "choice"    # Z

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getCheckAnimator(Z)Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getOtherAnimator(Z)Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeChoiceAnimators(Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;)V

    .line 874
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addAnimatorHelpers(Ljava/util/List;)V

    .line 875
    return-void
.end method

.method private createBottomAnimator(ZLandroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "in"    # Z
    .param p2, "target"    # Landroid/view/View;
    .param p3, "forceMenuBar"    # Z
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1010
    invoke-direct {p0, p2, p3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getBottomView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1012
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorBottomIn:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1013
    if-eqz p4, :cond_0

    .line 1014
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1016
    :cond_0
    return-object v0

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorBottomOut:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 1010
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private createChoiceAnimators(Ljava/util/List;ILandroid/view/View;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p2, "position"    # I
    .param p3, "target"    # Landroid/view/View;
    .param p4, "maker"    # Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper;",
            ">;I",
            "Landroid/view/View;",
            "Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper;>;"
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeChoiceAnimator(ILandroid/view/View;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    .line 881
    .local v0, "helper":Lcom/oppo/util/OppoAnimatorHelper;
    if-eqz v0, :cond_0

    .line 882
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_0
    return-void
.end method

.method private createFadeAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "in"    # Z
    .param p2, "target"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1033
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1034
    .local v0, "fadeAnim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorFadeIn:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1035
    if-eqz p3, :cond_0

    .line 1036
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1038
    :cond_0
    return-object v0

    .line 1034
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 1033
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private createFlowView(I)Lcom/oppo/widget/OppoOptionMenuBar;
    .locals 6
    .param p1, "layout"    # I

    .prologue
    const v5, 0xc02049b

    .line 919
    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 920
    .local v0, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 921
    .local v1, "flowView":Lcom/oppo/widget/OppoOptionMenuBar;
    if-nez v1, :cond_1

    .line 922
    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 923
    .local v2, "parent":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 924
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "flowView":Lcom/oppo/widget/OppoOptionMenuBar;
    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 925
    .restart local v1    # "flowView":Lcom/oppo/widget/OppoOptionMenuBar;
    if-nez v1, :cond_0

    .line 926
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have an OppoOptionMenuBar whose id attribute is \'oppo.R.id.oppo_flow_bar\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 933
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoOptionMenuBar;->setFlowMenuFlag(Z)V

    .line 936
    .end local v2    # "parent":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private createRightAnimator(ZLandroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "in"    # Z
    .param p2, "target"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 1022
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1023
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorRightIn:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1024
    if-eqz p3, :cond_0

    .line 1025
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1027
    :cond_0
    return-object v0

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorRightOut:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 1022
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getActionBarShow()Z
    .locals 2

    .prologue
    .line 967
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 968
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    .line 971
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBottomInVisibility()I
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x0

    return v0
.end method

.method private getBottomInfo()V
    .locals 5

    .prologue
    .line 902
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    instance-of v1, v1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 904
    .local v0, "bottomView":Lcom/oppo/widget/OppoOptionMenuBar;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationVisibility()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMajorVisibility:I

    .line 905
    const/4 v1, 0x0

    const-string v2, "OppoMultiChoiceAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBottomInfo : mMajorVisibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMajorVisibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 907
    .end local v0    # "bottomView":Lcom/oppo/widget/OppoOptionMenuBar;
    :cond_0
    return-void
.end method

.method private getBottomOutVisibility()I
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    instance-of v0, v0, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v0, :cond_0

    .line 1057
    const/4 v0, 0x0

    .line 1059
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getBottomView(Landroid/view/View;Z)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "forceMenuBar"    # Z

    .prologue
    .line 1043
    if-nez p2, :cond_0

    instance-of v0, p1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v0, :cond_0

    .line 1044
    const v0, 0xc02046c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1046
    :cond_0
    return-object p1
.end method

.method private getChoiceAnimators()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 851
    iget-object v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/util/OppoAnimatorHelper;

    .line 852
    .local v1, "helper":Lcom/oppo/util/OppoAnimatorHelper;
    invoke-virtual {v1}, Lcom/oppo/util/OppoAnimatorHelper;->initialize()V

    .line 853
    invoke-virtual {v1}, Lcom/oppo/util/OppoAnimatorHelper;->getAnimators()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 855
    .end local v1    # "helper":Lcom/oppo/util/OppoAnimatorHelper;
    :cond_0
    return-object v0
.end method

.method private getFlowInVisibility()I
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    instance-of v0, v0, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v0, :cond_0

    .line 1065
    const/16 v0, 0x8

    .line 1067
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFlowOutVisibility()I
    .locals 1

    .prologue
    .line 1072
    const/16 v0, 0x8

    return v0
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    .line 976
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/OppoWindowDecorActionBar;

    .line 977
    .local v0, "actionBar":Lcom/android/internal/app/OppoWindowDecorActionBar;
    if-eqz v0, :cond_0

    .line 978
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 979
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 981
    :cond_0
    return-void
.end method

.method private initAdapterView(Landroid/widget/AdapterView;)Landroid/widget/AdapterView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;)",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<Landroid/widget/ListAdapter;>;"
    if-nez p1, :cond_0

    .line 1098
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your adapter view to make animation is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1101
    return-object p1
.end method

.method private initBottomView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "bottomView"    # Landroid/view/View;

    .prologue
    .line 911
    if-nez p1, :cond_0

    .line 912
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your bottom view to make animation is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_0
    return-object p1
.end method

.method private initFromResources(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1077
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0412

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDurationChoice:J

    .line 1079
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0411

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDurationRemove:J

    .line 1081
    const v0, 0xc0f0402

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorBottomIn:Landroid/view/animation/Interpolator;

    .line 1083
    const v0, 0xc0f0403

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorBottomOut:Landroid/view/animation/Interpolator;

    .line 1085
    const v0, 0xc0f0404

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorRightIn:Landroid/view/animation/Interpolator;

    .line 1087
    const v0, 0xc0f0405

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorRightOut:Landroid/view/animation/Interpolator;

    .line 1089
    const v0, 0xc0f0406

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorFadeIn:Landroid/view/animation/Interpolator;

    .line 1091
    const v0, 0xc0f0407

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mInterpolatorFadeOut:Landroid/view/animation/Interpolator;

    .line 1093
    return-void
.end method

.method private isMoreGroupExpanded()Z
    .locals 2

    .prologue
    .line 888
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    instance-of v1, v1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v1, :cond_0

    .line 889
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 890
    .local v0, "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOperationsGroupExpanded()Z

    move-result v1

    .line 892
    .end local v0    # "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeBottomIn(Landroid/content/Context;Landroid/view/View;IZ)Lcom/oppo/util/OppoAnimatorHelper;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "visibility"    # I
    .param p4, "forceMenuBar"    # Z

    .prologue
    const/4 v2, 0x1

    .line 986
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesBottomIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    invoke-interface {v0, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getStartValue(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 987
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mTranslationYListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v2, p2, p4, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->createBottomAnimator(ZLandroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesBottomIn:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    invoke-static {v0, v3}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->newInstance(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    const/4 v4, 0x0

    const-string v0, "BottomIn"

    invoke-virtual {p0, p2, p4, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeAnimatorHelper(Ljava/util/List;ZIILjava/lang/String;)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    return-object v0
.end method

.method private makeBottomOut(Landroid/content/Context;Landroid/view/View;IZ)Lcom/oppo/util/OppoAnimatorHelper;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "visibility"    # I
    .param p4, "forceMenuBar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 998
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesBottomOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    invoke-interface {v0, p2}, Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;->getStartValue(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mTranslationYListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v2, p2, p4, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->createBottomAnimator(ZLandroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mSetValuesBottomOut:Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;

    invoke-static {v0, v3}, Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;->newInstance(Landroid/animation/ValueAnimator;Lcom/oppo/util/OppoAnimatorHelper$OnSetValuesListener;)Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    const-string v0, "BottomOut"

    invoke-virtual {p0, p2, p4, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v3, p3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeAnimatorHelper(Ljava/util/List;ZIILjava/lang/String;)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    return-object v0
.end method

.method private needBottomAnimations()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionBarShow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->isMoreGroupExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needSetRightView(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 860
    if-eqz p1, :cond_2

    .line 861
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->isAnimationsRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v0

    .line 864
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFinishing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAnimatorsEnd(Z)V
    .locals 4
    .param p1, "start"    # Z

    .prologue
    .line 1106
    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1107
    iget-object v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEndListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 1109
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;

    .line 1110
    .local v1, "listener":Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;
    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;->onAnimatorsEnd(Z)V

    goto :goto_0

    .line 1112
    .end local v1    # "listener":Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;
    :cond_0
    return-void
.end method

.method private showBottomExtra(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const/4 v0, 0x0

    .line 959
    if-eqz p1, :cond_0

    .line 960
    const-string v1, "OppoMultiChoiceAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showBottomExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 961
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 963
    :cond_0
    return-void

    .line 961
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showMajorGroup(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 950
    instance-of v2, p1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v2, :cond_0

    .line 951
    const-string v2, "OppoMultiChoiceAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMajorGroup : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 952
    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 953
    .local v0, "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationVisibility(I)V

    .line 955
    .end local v0    # "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    :cond_0
    return-void

    .line 953
    .restart local v0    # "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMajorVisibility:I

    goto :goto_0
.end method

.method private updateMenuBar(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "refreshMore"    # Z

    .prologue
    .line 941
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    instance-of v1, v1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/oppo/widget/OppoOptionMenuBar;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 943
    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBar;

    .line 944
    .local v0, "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v0, v1, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->copyFrom(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    .line 946
    .end local v0    # "menuBar":Lcom/oppo/widget/OppoOptionMenuBar;
    :cond_0
    return-void
.end method


# virtual methods
.method addAnimatorHelper(Lcom/oppo/util/OppoAnimatorHelper;)V
    .locals 5
    .param p1, "helper"    # Lcom/oppo/util/OppoAnimatorHelper;

    .prologue
    .line 696
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/OppoWindowDecorActionBar;

    .line 697
    .local v0, "actionBar":Lcom/android/internal/app/OppoWindowDecorActionBar;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 698
    const/4 v1, 0x0

    const-string v2, "OppoMultiChoiceAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAnimatorHelper : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper;->initialize()V

    .line 700
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper;->getDependency()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 701
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper;->getAnimators()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addAfterAnimators(Ljava/util/List;)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper;->getDependency()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 703
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper;->getAnimators()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addBeforeAnimators(Ljava/util/List;)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/util/OppoAnimatorHelper;->getAnimators()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoWindowDecorActionBar;->addWithAnimators(Ljava/util/List;)V

    goto :goto_0
.end method

.method addAnimatorHelpers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p1, "helpers":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoAnimatorHelper;

    .line 713
    .local v0, "helper":Lcom/oppo/util/OppoAnimatorHelper;
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addAnimatorHelper(Lcom/oppo/util/OppoAnimatorHelper;)V

    goto :goto_0

    .line 715
    .end local v0    # "helper":Lcom/oppo/util/OppoAnimatorHelper;
    :cond_0
    return-void
.end method

.method public addOnAnimatorsEndListener(Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEndListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->finishActionMode(Ljava/util/List;)V

    .line 577
    return-void
.end method

.method finishActionMode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->onFinishActionMode(Ljava/util/List;)V

    .line 672
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 674
    :cond_0
    return-void
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method getCheckAnimator(Z)Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    .locals 3
    .param p1, "choice"    # Z

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->hasPositions()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeFadeIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .line 786
    .local v0, "makerIn":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->hasPositions()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeFadeOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .line 787
    .local v1, "makerOut":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :goto_1
    if-eqz p1, :cond_2

    .end local v0    # "makerIn":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :goto_2
    return-object v0

    .line 785
    .end local v1    # "makerOut":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeRightIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    goto :goto_0

    .line 786
    .restart local v0    # "makerIn":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeRightOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    goto :goto_1

    .restart local v1    # "makerOut":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :cond_2
    move-object v0, v1

    .line 787
    goto :goto_2
.end method

.method public getFlowBar()Lcom/oppo/widget/OppoOptionMenuBar;
    .locals 1

    .prologue
    .line 641
    sget-object v0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowView:Lcom/oppo/widget/OppoOptionMenuBar;

    return-object v0
.end method

.method getOtherAnimator(Z)Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    .locals 3
    .param p1, "choice"    # Z

    .prologue
    .line 792
    iget-boolean v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRightAnimation:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeRightIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .line 793
    .local v0, "makerIn":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :goto_0
    iget-boolean v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRightAnimation:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeRightOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .line 794
    .local v1, "makerOut":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :goto_1
    if-eqz p1, :cond_2

    .end local v1    # "makerOut":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :goto_2
    return-object v1

    .line 792
    .end local v0    # "makerIn":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeFadeIn:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    goto :goto_0

    .line 793
    .restart local v0    # "makerIn":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMakeFadeOut:Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    goto :goto_1

    .restart local v1    # "makerOut":Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    :cond_2
    move-object v1, v0

    .line 794
    goto :goto_2
.end method

.method getPositionForView(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "headers":I
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAdapterView:Landroid/widget/AdapterView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAdapterView:Landroid/widget/AdapterView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method getTargetHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, "height":I
    if-eqz p1, :cond_0

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 835
    if-nez v0, :cond_0

    .line 836
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 838
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 841
    :cond_0
    return v0
.end method

.method getTargetWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "width":I
    if-eqz p1, :cond_0

    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 821
    if-nez v0, :cond_0

    .line 822
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 824
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 827
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 420
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDecoratorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 421
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->needSetRightView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->isChoiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->setCheckView(Landroid/view/View;I)V

    .line 423
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->isChoiceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->setOtherView(Landroid/view/View;I)V

    .line 425
    :cond_0
    return-object v0

    :cond_1
    move v1, v3

    .line 422
    goto :goto_0

    :cond_2
    move v3, v2

    .line 423
    goto :goto_1
.end method

.method hasPositions()Z
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public isActionBarShow()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionBarShow:Z

    return v0
.end method

.method public isAnimationsRunning()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mStarting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFinishing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChoiceMode()Z
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;

    invoke-interface {v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;->isChoiceMode()Z

    move-result v0

    return v0
.end method

.method makeAnimatorHelper(Ljava/util/List;ZIILjava/lang/String;)Lcom/oppo/util/OppoAnimatorHelper;
    .locals 8
    .param p2, "in"    # Z
    .param p3, "visibility"    # I
    .param p4, "dependency"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;",
            ">;ZII",
            "Ljava/lang/String;",
            ")",
            "Lcom/oppo/util/OppoAnimatorHelper;"
        }
    .end annotation

    .prologue
    .line 734
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/util/OppoAnimatorHelper$ValueAnimatorData;>;"
    new-instance v0, Lcom/oppo/util/OppoAnimatorHelper;

    iget-wide v4, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDurationChoice:J

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/oppo/util/OppoAnimatorHelper;-><init>(Ljava/util/List;ZIJILjava/lang/String;)V

    return-object v0
.end method

.method makeChoiceAnimator(ILandroid/view/View;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)Lcom/oppo/util/OppoAnimatorHelper;
    .locals 3
    .param p1, "position"    # I
    .param p2, "target"    # Landroid/view/View;
    .param p3, "maker"    # Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "helper":Lcom/oppo/util/OppoAnimatorHelper;
    if-eqz p2, :cond_0

    .line 802
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {p3, v1, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;->makeAnimator(Landroid/content/Context;Landroid/view/View;)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/util/OppoAnimatorHelper;->appendTag(Ljava/lang/String;)V

    .line 804
    if-eqz p4, :cond_0

    .line 805
    invoke-virtual {v0, p4}, Lcom/oppo/util/OppoAnimatorHelper;->addListener(Landroid/animation/Animator$AnimatorListener;)Lcom/oppo/util/OppoAnimatorHelper;

    .line 808
    :cond_0
    return-object v0
.end method

.method makeChoiceAnimators(Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;)V
    .locals 9
    .param p1, "checkMaker"    # Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;
    .param p2, "otherMaker"    # Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;

    .prologue
    .line 749
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0, v7}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 751
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceViews:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 753
    .local v2, "position":I
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;

    invoke-interface {v0, v6}, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;->findCheckView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 754
    .local v3, "checkView":Landroid/view/View;
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;

    invoke-interface {v0, v6}, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;->findOtherView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 755
    .local v8, "otherView":Landroid/view/View;
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mStarting:Z

    if-eqz v0, :cond_1

    .line 756
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    new-instance v5, Lcom/oppo/widget/OppoMultiChoiceAdapter$13;

    invoke-direct {v5, p0, v8}, Lcom/oppo/widget/OppoMultiChoiceAdapter$13;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;)V

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->createChoiceAnimators(Ljava/util/List;ILandroid/view/View;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)V

    .line 749
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 767
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 768
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    new-instance v5, Lcom/oppo/widget/OppoMultiChoiceAdapter$14;

    invoke-direct {v5, p0, v8}, Lcom/oppo/widget/OppoMultiChoiceAdapter$14;-><init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;Landroid/view/View;)V

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->createChoiceAnimators(Ljava/util/List;ILandroid/view/View;Lcom/oppo/widget/OppoMultiChoiceAdapter$AnimatorMaker;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 781
    .end local v2    # "position":I
    .end local v3    # "checkView":Landroid/view/View;
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "otherView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method makeTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method makeTag(Landroid/view/View;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "forceMenuBar"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 719
    if-eqz p1, :cond_0

    .line 720
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getBottomView(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 723
    .end local p3    # "tag":Ljava/lang/String;
    :cond_0
    return-object p3
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAllAnimatorsEnd(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mChoiceAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 688
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mStarting:Z

    .line 689
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFinishing:Z

    .line 690
    iput-boolean v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEnding:Z

    .line 691
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->notifyAnimatorsEnd(Z)V

    .line 692
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 432
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 460
    const-string v0, "OppoMultiChoiceAdapter"

    const-string v1, "onDestroyActionMode"

    invoke-static {v2, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 461
    iput-boolean v3, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFinishing:Z

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 463
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->setChoiceMode(Z)V

    .line 464
    sget-object v0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowView:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0, v0, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->updateMenuBar(Landroid/view/View;Z)V

    .line 465
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->showMajorGroup(Landroid/view/View;Z)V

    .line 466
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->needBottomAnimations()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    iget v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mMajorVisibility:I

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomIn:Lcom/oppo/util/OppoAnimatorHelper;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addAnimatorHelper(Lcom/oppo/util/OppoAnimatorHelper;)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraIn:Lcom/oppo/util/OppoAnimatorHelper;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addAnimatorHelper(Lcom/oppo/util/OppoAnimatorHelper;)V

    .line 477
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowOut:Lcom/oppo/util/OppoAnimatorHelper;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addAnimatorHelper(Lcom/oppo/util/OppoAnimatorHelper;)V

    .line 478
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRemoveAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->isActionBarShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addChoiceAnimators(Z)V

    .line 481
    :cond_2
    return-void

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraView:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->showBottomExtra(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method onFinishActionMode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method onHideAnimatorsEnd()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;

    invoke-interface {v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;->onFinish()V

    .line 683
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->notifyDataSetChanged()V

    .line 442
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->isAnimationsRunning()Z

    move-result v0

    return v0
.end method

.method public removeOnAnimatorsEndListener(Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/widget/OppoMultiChoiceAdapter$OnAnimatorsEndListener;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mEndListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public setActionBarShow(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionBarShow:Z

    .line 617
    return-void
.end method

.method setCheckView(Landroid/view/View;I)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 654
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;->findCheckView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 655
    .local v0, "checkView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 658
    :cond_0
    return-void
.end method

.method setChoiceMode(Z)V
    .locals 1
    .param p1, "choice"    # Z

    .prologue
    .line 649
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;->setChoiceMode(Z)V

    .line 650
    return-void
.end method

.method public setExtraBottomView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 626
    if-nez p1, :cond_0

    .line 627
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your extra view to make animation is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraView:Landroid/view/View;

    .line 630
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeBottomIn(Landroid/content/Context;Landroid/view/View;IZ)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraIn:Lcom/oppo/util/OppoAnimatorHelper;

    .line 631
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->makeBottomOut(Landroid/content/Context;Landroid/view/View;IZ)Lcom/oppo/util/OppoAnimatorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraOut:Lcom/oppo/util/OppoAnimatorHelper;

    .line 632
    return-void
.end method

.method public setOtherAnimation(Z)V
    .locals 0
    .param p1, "right"    # Z

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRightAnimation:Z

    .line 522
    return-void
.end method

.method setOtherView(Landroid/view/View;I)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 662
    iget-object v1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mDecoratedAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoMultiChoiceAdapter$Choosable;->findOtherView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 663
    .local v0, "otherView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 666
    :cond_0
    return-void
.end method

.method public setRightDependency(I)V
    .locals 0
    .param p1, "dependency"    # I

    .prologue
    .line 531
    iput p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mRightDependency:I

    .line 532
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 553
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 554
    const-string v0, "OppoMultiChoiceAdapter"

    const-string v1, "onStartActionMode"

    invoke-static {v3, v0, v1}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 555
    iput-boolean v2, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mStarting:Z

    .line 556
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    .line 557
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->setChoiceMode(Z)V

    .line 558
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->getBottomInfo()V

    .line 559
    sget-object v0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowView:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0, v0, v3}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->updateMenuBar(Landroid/view/View;Z)V

    .line 560
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mFlowIn:Lcom/oppo/util/OppoAnimatorHelper;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addAnimatorHelper(Lcom/oppo/util/OppoAnimatorHelper;)V

    .line 561
    invoke-direct {p0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->needBottomAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mBottomOut:Lcom/oppo/util/OppoAnimatorHelper;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addAnimatorHelper(Lcom/oppo/util/OppoAnimatorHelper;)V

    .line 563
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mExtraOut:Lcom/oppo/util/OppoAnimatorHelper;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addAnimatorHelper(Lcom/oppo/util/OppoAnimatorHelper;)V

    .line 565
    :cond_0
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoMultiChoiceAdapter;->addChoiceAnimators(Z)V

    .line 566
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method
