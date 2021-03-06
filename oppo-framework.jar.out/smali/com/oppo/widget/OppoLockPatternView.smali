.class public Lcom/oppo/widget/OppoLockPatternView;
.super Landroid/view/View;
.source "OppoLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoLockPatternView$SavedState;,
        Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;,
        Lcom/oppo/widget/OppoLockPatternView$DisplayMode;,
        Lcom/oppo/widget/OppoLockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "OppoLockPatternView"


# instance fields
.field private final TRUELARGE:Landroid/view/animation/Interpolator;

.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private mCenterX:F

.field private mCenterY:F

.field private mCirclePaint:Landroid/graphics/Paint;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDefaultCircleColor:I

.field private mDefaultDiameterFactor:F

.field private mDefaultFingerRadius:F

.field private mDefaultRadius:F

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mFingerPaint:Landroid/graphics/Paint;

.field private mFingerRadius:F

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mIsFinger:Z

.field private mLargeFingerRadius:F

.field private final mMinMumber:I

.field private mNotDraw:[[Z

.field private mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintAlpha:[[I

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPathTrueColor:I

.field private mPathWrongColor:I

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I

.field private mTranslateY:[[F

.field private mTrueCircleColor:I

.field private mTrueLargeTime:I

.field private mTruePauseTime:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWrongCircleColor:I

.field private mWrongInterpolator:Lcom/oppo/widget/OppoFingerWrongIn;

.field private mWrongTotalTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 293
    const v0, 0xc010447

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 298
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDrawingProfilingStarted:Z

    .line 86
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 87
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 100
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0x9

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 107
    const/4 v11, 0x3

    const/4 v12, 0x3

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    .line 113
    const/high16 v11, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 114
    const/high16 v11, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 118
    sget-object v11, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 119
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 120
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 121
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 122
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 124
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    .line 125
    const v11, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultDiameterFactor:F

    .line 126
    const/16 v11, 0x7f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mStrokeAlpha:I

    .line 127
    const v11, 0x3f19999a    # 0.6f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    .line 131
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 132
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 139
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mViewWidth:I

    .line 140
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mViewHeight:I

    .line 144
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultCircleColor:I

    .line 145
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mWrongCircleColor:I

    .line 146
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mTrueCircleColor:I

    .line 147
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultFingerRadius:F

    .line 148
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mLargeFingerRadius:F

    .line 149
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    .line 150
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCenterX:F

    .line 151
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCenterY:F

    .line 152
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F

    .line 153
    const/16 v11, 0x316

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mWrongTotalTime:I

    .line 154
    new-instance v11, Lcom/oppo/widget/OppoFingerWrongIn;

    invoke-direct {v11}, Lcom/oppo/widget/OppoFingerWrongIn;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mWrongInterpolator:Lcom/oppo/widget/OppoFingerWrongIn;

    .line 155
    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3f0e147b    # 0.555f

    const/4 v13, 0x0

    const v14, 0x3f0e147b    # 0.555f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->TRUELARGE:Landroid/view/animation/Interpolator;

    .line 156
    const/16 v11, 0xd0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mTruePauseTime:I

    .line 157
    const/16 v11, 0x177

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mTrueLargeTime:I

    .line 158
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mMinMumber:I

    .line 162
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultRadius:F

    .line 163
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    .line 164
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    .line 1388
    const/4 v11, 0x3

    const/4 v12, 0x3

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z

    .line 1389
    const/4 v11, 0x3

    const/4 v12, 0x3

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mTranslateY:[[F

    .line 1390
    const/4 v11, 0x3

    new-array v11, v11, [[I

    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_1

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x3

    new-array v13, v13, [I

    fill-array-data v13, :array_2

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaintAlpha:[[I

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 301
    .local v10, "resources":Landroid/content/res/Resources;
    sget-object v11, Loppo/R$styleable;->OppoLockPatternView:[I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 302
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "aspect":Ljava/lang/String;
    const v11, 0xc050496

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mViewWidth:I

    .line 305
    const v11, 0xc050497

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mViewHeight:I

    .line 309
    const v11, 0xc060429

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 310
    .local v7, "defaultTrueColor":I
    const v11, 0xc06042a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 311
    .local v8, "defaultWrongColor":I
    const v11, 0xc060402

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 312
    .local v5, "defaultCircleColor":I
    const/4 v11, 0x1

    invoke-virtual {v3, v11, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultCircleColor:I

    .line 313
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultDiameterFactor:F

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    .line 314
    const/4 v11, 0x3

    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathTrueColor:I

    .line 315
    const/4 v11, 0x4

    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathWrongColor:I

    .line 317
    const v11, 0xc06041b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mWrongCircleColor:I

    .line 318
    const v11, 0xc06041c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mTrueCircleColor:I

    .line 319
    const v11, 0xc0504a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 320
    .local v6, "defaultFingerDia":I
    const v11, 0xc0504a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 321
    .local v9, "largeFingerDia":I
    int-to-float v11, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultFingerRadius:F

    .line 322
    int-to-float v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mLargeFingerRadius:F

    .line 323
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultFingerRadius:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F

    .line 328
    move-object/from16 v0, p0

    iget v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultFingerRadius:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultRadius:F

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultRadius:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultCircleColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    const-string v11, "square"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 336
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    .line 345
    :goto_0
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oppo/widget/OppoLockPatternView;->setClickable(Z)V

    .line 347
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 349
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v12, 0x4d

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v12, 0x7f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 357
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    .line 358
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultFingerRadius:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 362
    return-void

    .line 337
    :cond_0
    const-string v11, "lock_width"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 338
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto :goto_0

    .line 339
    :cond_1
    const-string v11, "lock_height"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 340
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 342
    :cond_2
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 1390
    nop

    :array_0
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoLockPatternView;)F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;

    .prologue
    .line 73
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F

    return v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoLockPatternView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;
    .param p1, "x1"    # F

    .prologue
    .line 73
    iput p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoLockPatternView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoLockPatternView;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaintAlpha:[[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoLockPatternView;)[[Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoLockPatternView;)[[F
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoLockPatternView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mTranslateY:[[F

    return-object v0
.end method

.method private addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/oppo/widget/OppoLockPatternView$Cell;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 644
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyCellAdded()V

    .line 646
    return-void
.end method

.method private changePathPaintColor()V
    .locals 2

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathWrongColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1326
    :goto_0
    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathTrueColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private checkForNewHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 651
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoLockPatternView;->getRowHit(F)I

    move-result v1

    .line 652
    .local v1, "rowHit":I
    if-gez v1, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-object v2

    .line 655
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->getColumnHit(F)I

    move-result v0

    .line 656
    .local v0, "columnHit":I
    if-ltz v0, :cond_0

    .line 660
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 663
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 503
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 504
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 502
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoLockPatternView;->checkForNewHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v0

    .line 603
    .local v0, "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 606
    const/4 v4, 0x0

    .line 607
    .local v4, "fillInGapCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 608
    .local v7, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 609
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 610
    .local v6, "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 611
    .local v2, "dRow":I
    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 613
    .local v1, "dColumn":I
    iget v5, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 614
    .local v5, "fillInRow":I
    iget v3, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 616
    .local v3, "fillInColumn":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 617
    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 620
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 621
    iget v8, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 624
    :cond_2
    invoke-static {v5, v3}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v4

    .line 627
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 629
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoLockPatternView;->addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 631
    :cond_4
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 632
    iget-boolean v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 633
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lcom/oppo/widget/OppoLockPatternView;->performHapticFeedback(II)Z

    .line 639
    .end local v0    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v4    # "fillInGapCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v1    # "dColumn":I
    .restart local v2    # "dRow":I
    .restart local v3    # "fillInColumn":I
    .restart local v4    # "fillInGapCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v5    # "fillInRow":I
    .restart local v6    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    .line 617
    goto :goto_0

    .line 639
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIIIZ)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "i"    # I
    .param p5, "j"    # I
    .param p6, "partOfPattern"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 1134
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mTranslateY:[[F

    aget-object v5, v5, p4

    aget v4, v5, p5

    .line 1135
    .local v4, "value":F
    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 1136
    .local v3, "squareWidth":F
    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 1137
    .local v2, "squareHeight":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultRadius:F

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 1138
    .local v0, "offsetX":I
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultRadius:F

    mul-float/2addr v5, v6

    sub-float v5, v2, v5

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 1139
    .local v1, "offsetY":I
    add-int v5, p2, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultRadius:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mCenterX:F

    .line 1140
    add-int v5, p3, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultRadius:F

    add-float/2addr v5, v6

    add-float/2addr v5, v4

    iput v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mCenterY:F

    .line 1144
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v6, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v5, v6, :cond_0

    .line 1146
    iput-boolean v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    .line 1147
    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    invoke-direct {p0, p1, v5, p4, p5}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;ZII)V

    .line 1208
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v6, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v5, v6, :cond_1

    .line 1151
    iput-boolean v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    .line 1152
    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    invoke-direct {p0, p1, v5, p4, p5}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;ZII)V

    goto :goto_0

    .line 1154
    :cond_1
    if-eqz p6, :cond_2

    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v6, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v5, v6, :cond_3

    .line 1161
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultCircleColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1162
    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    .line 1163
    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    invoke-direct {p0, p1, v5, p4, p5}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;ZII)V

    goto :goto_0

    .line 1166
    :cond_3
    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v5, :cond_4

    .line 1173
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mTrueCircleColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1174
    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    .line 1175
    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    invoke-direct {p0, p1, v5, p4, p5}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;ZII)V

    goto :goto_0

    .line 1177
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v6, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v5, v6, :cond_5

    .line 1185
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mWrongCircleColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1186
    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    .line 1187
    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    invoke-direct {p0, p1, v5, p4, p5}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;ZII)V

    goto :goto_0

    .line 1190
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v6, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v6, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v5, v6, :cond_7

    .line 1199
    :cond_6
    iget-object v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mTrueCircleColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1200
    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    .line 1201
    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mIsFinger:Z

    invoke-direct {p0, p1, v5, p4, p5}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;ZII)V

    goto :goto_0

    .line 1204
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown display mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private drawCircle(Landroid/graphics/Canvas;ZII)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isFinger"    # Z
    .param p3, "i"    # I
    .param p4, "j"    # I

    .prologue
    .line 1212
    if-eqz p2, :cond_1

    .line 1213
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mCenterX:F

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mCenterY:F

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F

    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z

    aget-object v0, v0, p3

    aget-boolean v0, v0, p4

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaintAlpha:[[I

    aget-object v1, v1, p3

    aget v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1217
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mCenterX:F

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mCenterY:F

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultRadius:F

    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 941
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 945
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .param p1, "x"    # F

    .prologue
    .line 695
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 696
    .local v4, "squareWidth":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 698
    .local v1, "hitSize":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 699
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 701
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 702
    .local v0, "hitLeft":F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 706
    .end local v0    # "hitLeft":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 699
    .restart local v0    # "hitLeft":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    .end local v0    # "hitLeft":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .param p1, "y"    # F

    .prologue
    .line 674
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 675
    .local v4, "squareHeight":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 677
    .local v0, "hitSize":F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 678
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 680
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 681
    .local v1, "hitTop":F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 685
    .end local v1    # "hitTop":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 678
    .restart local v1    # "hitTop":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v1    # "hitTop":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 908
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 910
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 911
    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoLockPatternView;->detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v1

    .line 912
    .local v1, "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    if-eqz v1, :cond_2

    .line 913
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 914
    sget-object v7, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 915
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternStarted()V

    .line 920
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 921
    iget v7, v1, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 922
    .local v2, "startX":F
    iget v7, v1, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 924
    .local v3, "startY":F
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 925
    .local v4, "widthOffset":F
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 927
    .local v0, "heightOffset":F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/oppo/widget/OppoLockPatternView;->invalidate(IIII)V

    .line 930
    .end local v0    # "heightOffset":F
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .end local v4    # "widthOffset":F
    :cond_1
    iput v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 931
    iput v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 938
    return-void

    .line 916
    :cond_2
    iget-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_0

    .line 917
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 918
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 767
    .local v8, "historySize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_c

    .line 768
    if-ge v10, v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .line 769
    .local v25, "x":F
    :goto_1
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .line 770
    .local v26, "y":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 771
    .local v18, "patternSizePreHitDetect":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView;->detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v9

    .line 772
    .local v9, "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 773
    .local v17, "patternSize":I
    if-eqz v9, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 774
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternStarted()V

    .line 778
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 779
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 780
    .local v6, "dy":F
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a    # 0.01f

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2

    .line 782
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 783
    .local v14, "oldX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 785
    .local v15, "oldY":F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 786
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 788
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    if-lez v17, :cond_1

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 790
    .local v16, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v19, v27, v28

    .line 792
    .local v19, "radius":F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 794
    .local v12, "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 795
    .local v21, "startX":F
    iget v0, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 800
    .local v22, "startY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 802
    .local v11, "invalidateRect":Landroid/graphics/Rect;
    cmpg-float v27, v21, v25

    if-gez v27, :cond_5

    .line 803
    move/from16 v13, v21

    .line 804
    .local v13, "left":F
    move/from16 v20, v25

    .line 810
    .local v20, "right":F
    :goto_3
    cmpg-float v27, v22, v26

    if-gez v27, :cond_6

    .line 811
    move/from16 v23, v22

    .line 812
    .local v23, "top":F
    move/from16 v4, v26

    .line 819
    .local v4, "bottom":F
    :goto_4
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 822
    cmpg-float v27, v21, v14

    if-gez v27, :cond_7

    .line 823
    move/from16 v13, v21

    .line 824
    move/from16 v20, v14

    .line 830
    :goto_5
    cmpg-float v27, v22, v15

    if-gez v27, :cond_8

    .line 831
    move/from16 v23, v22

    .line 832
    move v4, v15

    .line 839
    :goto_6
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 843
    if-eqz v9, :cond_1

    .line 844
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 845
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 847
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 849
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    check-cast v9, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 851
    .restart local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 852
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 854
    cmpg-float v27, v21, v14

    if-gez v27, :cond_9

    .line 855
    move/from16 v13, v21

    .line 856
    move/from16 v20, v14

    .line 862
    :goto_7
    cmpg-float v27, v22, v15

    if-gez v27, :cond_a

    .line 863
    move/from16 v23, v22

    .line 864
    move v4, v15

    .line 874
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v24, v27, v28

    .line 875
    .local v24, "widthOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v7, v27, v28

    .line 877
    .local v7, "heightOffset":F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 883
    .end local v4    # "bottom":F
    .end local v7    # "heightOffset":F
    .end local v11    # "invalidateRect":Landroid/graphics/Rect;
    .end local v12    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13    # "left":F
    .end local v16    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v19    # "radius":F
    .end local v20    # "right":F
    .end local v21    # "startX":F
    .end local v22    # "startY":F
    .end local v23    # "top":F
    .end local v24    # "widthOffset":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 767
    .end local v14    # "oldX":F
    .end local v15    # "oldY":F
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 768
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v17    # "patternSize":I
    .end local v18    # "patternSizePreHitDetect":I
    .end local v25    # "x":F
    .end local v26    # "y":F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    goto/16 :goto_1

    .line 769
    .restart local v25    # "x":F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_2

    .line 806
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v11    # "invalidateRect":Landroid/graphics/Rect;
    .restart local v12    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v14    # "oldX":F
    .restart local v15    # "oldY":F
    .restart local v16    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .restart local v17    # "patternSize":I
    .restart local v18    # "patternSizePreHitDetect":I
    .restart local v19    # "radius":F
    .restart local v21    # "startX":F
    .restart local v22    # "startY":F
    .restart local v26    # "y":F
    :cond_5
    move/from16 v13, v25

    .line 807
    .restart local v13    # "left":F
    move/from16 v20, v21

    .restart local v20    # "right":F
    goto/16 :goto_3

    .line 814
    :cond_6
    move/from16 v23, v26

    .line 815
    .restart local v23    # "top":F
    move/from16 v4, v22

    .restart local v4    # "bottom":F
    goto/16 :goto_4

    .line 826
    :cond_7
    move v13, v14

    .line 827
    move/from16 v20, v21

    goto/16 :goto_5

    .line 834
    :cond_8
    move/from16 v23, v15

    .line 835
    move/from16 v4, v22

    goto/16 :goto_6

    .line 858
    :cond_9
    move v13, v14

    .line 859
    move/from16 v20, v21

    goto :goto_7

    .line 866
    :cond_a
    move/from16 v23, v15

    .line 867
    move/from16 v4, v22

    goto :goto_8

    .line 870
    :cond_b
    move/from16 v20, v21

    move/from16 v13, v21

    .line 871
    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_8

    .line 886
    .end local v4    # "bottom":F
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v9    # "hitCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v11    # "invalidateRect":Landroid/graphics/Rect;
    .end local v12    # "lastCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13    # "left":F
    .end local v14    # "oldX":F
    .end local v15    # "oldY":F
    .end local v16    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v17    # "patternSize":I
    .end local v18    # "patternSizePreHitDetect":I
    .end local v19    # "radius":F
    .end local v20    # "right":F
    .end local v21    # "startX":F
    .end local v22    # "startY":F
    .end local v23    # "top":F
    .end local v25    # "x":F
    .end local v26    # "y":F
    :cond_c
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 896
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternDetected()V

    .line 897
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 905
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 457
    :cond_0
    const v0, 0xc04045b

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 458
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternCleared()V

    .line 478
    :cond_0
    const v0, 0xc04045e

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 479
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 471
    :cond_0
    const v0, 0xc04045d

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 472
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternStart()V

    .line 464
    :cond_0
    const v0, 0xc04045c

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 465
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 493
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 494
    sget-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 495
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 496
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 541
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 550
    move v0, v1

    .line 552
    :goto_0
    return v0

    .line 543
    :sswitch_0
    move v0, p2

    .line 544
    goto :goto_0

    .line 546
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 547
    goto :goto_0

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 889
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 890
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 486
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 515
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 522
    return-void
.end method

.method public getFailAnimator()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 1332
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mWrongCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1333
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultFingerRadius:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mLargeFingerRadius:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1334
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/oppo/widget/OppoLockPatternView$1;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoLockPatternView$1;-><init>(Lcom/oppo/widget/OppoLockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1342
    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mWrongTotalTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1343
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mWrongInterpolator:Lcom/oppo/widget/OppoFingerWrongIn;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1344
    return-object v0
.end method

.method public getSuccessAnimator()Landroid/animation/Animator;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1354
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mTrueCircleColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1355
    new-array v3, v6, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultFingerRadius:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mLargeFingerRadius:F

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1356
    .local v1, "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/oppo/widget/OppoLockPatternView$2;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoLockPatternView$2;-><init>(Lcom/oppo/widget/OppoLockPatternView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1367
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1368
    .local v2, "colorAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/oppo/widget/OppoLockPatternView$3;

    invoke-direct {v3, p0}, Lcom/oppo/widget/OppoLockPatternView$3;-><init>(Lcom/oppo/widget/OppoLockPatternView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1377
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1378
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mTruePauseTime:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1379
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1380
    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mTrueLargeTime:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1381
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->TRUELARGE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1382
    return-object v0

    .line 1367
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->changePathPaintColor()V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    .line 953
    .local v29, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 954
    .local v13, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v16, v0

    .line 956
    .local v16, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v3, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v2, v3, :cond_2

    .line 961
    add-int/lit8 v2, v13, 0x1

    mul-int/lit16 v0, v2, 0x2bc

    move/from16 v26, v0

    .line 962
    .local v26, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oppo/widget/OppoLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    rem-int v32, v2, v26

    .line 964
    .local v32, "spotInCycle":I
    move/from16 v0, v32

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v24, v0

    .line 966
    .local v24, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 967
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v24

    if-ge v6, v0, :cond_0

    .line 968
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 969
    .local v10, "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v10}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v2, v16, v2

    invoke-virtual {v10}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 967
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 974
    .end local v10    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_0
    if-lez v24, :cond_3

    move/from16 v0, v24

    if-ge v0, v13, :cond_3

    const/16 v21, 0x1

    .line 976
    .local v21, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v21, :cond_1

    .line 977
    move/from16 v0, v32

    rem-int/lit16 v2, v0, 0x2bc

    int-to-float v2, v2

    const/high16 v3, 0x442f0000    # 700.0f

    div-float v30, v2, v3

    .line 980
    .local v30, "percentageOfNextCircle":F
    add-int/lit8 v2, v24, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 981
    .local v14, "currentCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v2, v14, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v11

    .line 982
    .local v11, "centerX":F
    iget v2, v14, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v12

    .line 984
    .local v12, "centerY":F
    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 985
    .local v23, "nextCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, v23

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    sub-float/2addr v2, v11

    mul-float v18, v30, v2

    .line 987
    .local v18, "dx":F
    move-object/from16 v0, v23

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float/2addr v2, v12

    mul-float v19, v30, v2

    .line 989
    .local v19, "dy":F
    add-float v2, v11, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 990
    add-float v2, v12, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 993
    .end local v11    # "centerX":F
    .end local v12    # "centerY":F
    .end local v14    # "currentCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v18    # "dx":F
    .end local v19    # "dy":F
    .end local v23    # "nextCell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v30    # "percentageOfNextCircle":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 996
    .end local v6    # "i":I
    .end local v21    # "needToUpdateInProgressPoint":Z
    .end local v24    # "numCircles":I
    .end local v26    # "oneCycle":I
    .end local v32    # "spotInCycle":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v34, v0

    .line 997
    .local v34, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v33, v0

    .line 999
    .local v33, "squareHeight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    mul-float v2, v2, v34

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v31, v2, v3

    .line 1000
    .local v31, "radius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1003
    .local v15, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    .line 1006
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    move/from16 v28, v0

    .line 1007
    .local v28, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    move/from16 v27, v0

    .line 1009
    .local v27, "paddingLeft":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    const/4 v2, 0x3

    if-ge v6, v2, :cond_5

    .line 1010
    move/from16 v0, v28

    int-to-float v2, v0

    int-to-float v3, v6

    mul-float v3, v3, v33

    add-float v35, v2, v3

    .line 1012
    .local v35, "topY":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    const/4 v2, 0x3

    if-ge v7, v2, :cond_4

    .line 1013
    move/from16 v0, v27

    int-to-float v2, v0

    int-to-float v3, v7

    mul-float v3, v3, v34

    add-float v20, v2, v3

    .line 1014
    .local v20, "leftX":F
    move/from16 v0, v20

    float-to-int v4, v0

    move/from16 v0, v35

    float-to-int v5, v0

    aget-object v2, v16, v6

    aget-boolean v8, v2, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIIIZ)V

    .line 1012
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 974
    .end local v7    # "j":I
    .end local v15    # "currentPath":Landroid/graphics/Path;
    .end local v20    # "leftX":F
    .end local v27    # "paddingLeft":I
    .end local v28    # "paddingTop":I
    .end local v31    # "radius":F
    .end local v33    # "squareHeight":F
    .end local v34    # "squareWidth":F
    .end local v35    # "topY":F
    .restart local v24    # "numCircles":I
    .restart local v26    # "oneCycle":I
    .restart local v32    # "spotInCycle":I
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1009
    .end local v24    # "numCircles":I
    .end local v26    # "oneCycle":I
    .end local v32    # "spotInCycle":I
    .restart local v7    # "j":I
    .restart local v15    # "currentPath":Landroid/graphics/Path;
    .restart local v27    # "paddingLeft":I
    .restart local v28    # "paddingTop":I
    .restart local v31    # "radius":F
    .restart local v33    # "squareHeight":F
    .restart local v34    # "squareWidth":F
    .restart local v35    # "topY":F
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1022
    .end local v7    # "j":I
    .end local v35    # "topY":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v3, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v2, v3, :cond_c

    :cond_6
    const/16 v17, 0x1

    .line 1026
    .local v17, "drawPath":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    const/16 v25, 0x1

    .line 1027
    .local v25, "oldFlag":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1028
    if-eqz v17, :cond_7

    .line 1029
    const/4 v6, 0x0

    :goto_6
    add-int/lit8 v2, v13, -0x1

    if-ge v6, v2, :cond_7

    .line 1030
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1031
    .restart local v10    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    add-int/lit8 v2, v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1036
    .local v22, "next":Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v2, v16, v2

    move-object/from16 v0, v22

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_e

    .line 1052
    .end local v10    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v22    # "next":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_7
    if-eqz v17, :cond_b

    .line 1053
    const/4 v9, 0x0

    .line 1054
    .local v9, "anyCircles":Z
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v13, :cond_8

    .line 1055
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1060
    .restart local v10    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v2, v10, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v2, v16, v2

    iget v3, v10, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_f

    .line 1075
    .end local v10    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v3, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v2, v3, :cond_a

    :cond_9
    if-eqz v9, :cond_a

    .line 1076
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1078
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1081
    .end local v9    # "anyCircles":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1082
    return-void

    .line 1022
    .end local v17    # "drawPath":Z
    .end local v25    # "oldFlag":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1026
    .restart local v17    # "drawPath":Z
    :cond_d
    const/16 v25, 0x0

    goto :goto_5

    .line 1040
    .restart local v10    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v22    # "next":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v25    # "oldFlag":Z
    :cond_e
    move/from16 v0, v27

    int-to-float v2, v0

    iget v3, v10, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    int-to-float v3, v3

    mul-float v3, v3, v34

    add-float v20, v2, v3

    .line 1041
    .restart local v20    # "leftX":F
    move/from16 v0, v28

    int-to-float v2, v0

    iget v3, v10, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    int-to-float v3, v3

    mul-float v3, v3, v33

    add-float/2addr v2, v3

    .line 1029
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 1063
    .end local v20    # "leftX":F
    .end local v22    # "next":Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v9    # "anyCircles":Z
    :cond_f
    const/4 v9, 0x1

    .line 1065
    iget v2, v10, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v11

    .line 1066
    .restart local v11    # "centerX":F
    iget v2, v10, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v12

    .line 1067
    .restart local v12    # "centerY":F
    if-nez v6, :cond_10

    .line 1068
    invoke-virtual {v15, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1054
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1070
    :cond_10
    invoke-virtual {v15, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 711
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 713
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 724
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 725
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 727
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 715
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 718
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 721
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 575
    .local v1, "minimumWidth":I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 576
    .local v0, "minimumHeight":I
    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoLockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 577
    .local v3, "viewWidth":I
    invoke-direct {p0, p2, v0}, Lcom/oppo/widget/OppoLockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 579
    .local v2, "viewHeight":I
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 590
    :goto_0
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mViewWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mViewHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/oppo/widget/OppoLockPatternView;->setMeasuredDimension(II)V

    .line 591
    return-void

    .line 581
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 582
    goto :goto_0

    .line 584
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 585
    goto :goto_0

    .line 587
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1232
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;

    .line 1233
    .local v0, "ss":Lcom/oppo/widget/OppoLockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1234
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView;->setPattern(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1236
    invoke-static {}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->values()[Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 1237
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 1238
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 1239
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 1240
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1225
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1226
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;

    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/oppo/widget/OppoLockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 526
    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 532
    .local v1, "width":I
    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mViewWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 534
    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 535
    .local v0, "height":I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 536
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 732
    iget-boolean v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 760
    :cond_1
    :goto_0
    return v0

    .line 736
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 760
    goto :goto_0

    .line 738
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 741
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 744
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 747
    :pswitch_3
    iget-boolean v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    .line 748
    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 749
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 750
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 736
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAlphaAnimation(Landroid/animation/ValueAnimator;II)V
    .locals 3
    .param p1, "alphaAnimation"    # Landroid/animation/ValueAnimator;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 1401
    move v0, p2

    .line 1402
    .local v0, "m":I
    move v1, p3

    .line 1403
    .local v1, "n":I
    new-instance v2, Lcom/oppo/widget/OppoLockPatternView$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternView$4;-><init>(Lcom/oppo/widget/OppoLockPatternView;II)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1410
    return-void
.end method

.method public setBitmapNotDraw()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1394
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 1395
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mNotDraw:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 1394
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1393
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1398
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public setDisplayMode(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;)V
    .locals 4
    .param p1, "displayMode"    # Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .prologue
    .line 434
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 435
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->performHapticFeedback(I)Z

    .line 438
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 439
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne p1, v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 441
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mAnimatingPeriodStart:J

    .line 445
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 446
    .local v0, "first":Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 447
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 448
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 450
    .end local v0    # "first":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 451
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 386
    return-void
.end method

.method public setOnPatternListener(Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    .line 405
    return-void
.end method

.method public setPattern(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/oppo/widget/OppoLockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/widget/OppoLockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 415
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 416
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 417
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 418
    .local v0, "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 421
    .end local v0    # "cell":Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->setDisplayMode(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;)V

    .line 422
    return-void
.end method

.method public setSuccessFinger()V
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mTrueCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1348
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mDefaultFingerRadius:F

    iput v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F

    .line 1349
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mFingerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1350
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->invalidate()V

    .line 1351
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 396
    return-void
.end method

.method public setTranslateAnimation(Landroid/animation/ValueAnimator;II)V
    .locals 3
    .param p1, "translateAnimation"    # Landroid/animation/ValueAnimator;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 1413
    move v0, p2

    .line 1414
    .local v0, "m":I
    move v1, p3

    .line 1415
    .local v1, "n":I
    new-instance v2, Lcom/oppo/widget/OppoLockPatternView$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternView$5;-><init>(Lcom/oppo/widget/OppoLockPatternView;II)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1421
    new-instance v2, Lcom/oppo/widget/OppoLockPatternView$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/oppo/widget/OppoLockPatternView$6;-><init>(Lcom/oppo/widget/OppoLockPatternView;II)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1428
    return-void
.end method
