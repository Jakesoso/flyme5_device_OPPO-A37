.class Landroid/widget/OppoOverScroller$OppoSplineOverScroller;
.super Ljava/lang/Object;
.source "OppoOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OppoSplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_SPLINE:I = 0x3

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final OVER_SPLINE:I = 0x4

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static final VISCOUS_FLUID_SCALE:F = 14.0f

.field private static sViscousFluidNormalize:F


# instance fields
.field private mAccelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsScrollList:Z

.field private mLastDetla:D

.field private mLastPosition:I

.field private mOppoCount:I

.field private mOver:I

.field private mOverSplineStart:Z

.field private mOverSpring:Z

.field private mPhysicalCoeff:F

.field private mScrollerDistance:I

.field private mSplineDistance:I

.field private mSplineState:I

.field private mStart:I

.field private mStartTime:J

.field private mStartV:F

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 685
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    .line 693
    new-array v0, v4, [F

    sput-object v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_POSITION:[F

    .line 694
    new-array v0, v4, [F

    sput-object v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 621
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    .line 622
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    .line 626
    iput-boolean v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    .line 627
    iput-boolean v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSpring:Z

    .line 674
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    .line 677
    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 707
    iput-boolean v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 708
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .line 709
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    .line 714
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mAccelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 715
    sput v4, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    .line 716
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v4, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v1

    div-float v1, v4, v1

    sput v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    .line 717
    return-void
.end method

.method static synthetic access$002(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .prologue
    .line 616
    iget-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .prologue
    .line 616
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .prologue
    .line 616
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .prologue
    .line 616
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .prologue
    .line 616
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .prologue
    .line 616
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .prologue
    .line 616
    iget-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .prologue
    .line 616
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 735
    sub-int v2, p2, p1

    .line 736
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 737
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 738
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 739
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 740
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 741
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 742
    .local v8, "x_sup":F
    sget-object v9, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 743
    .local v3, "t_inf":F
    sget-object v9, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 744
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 745
    .local v5, "timeCoef":F
    iget v9, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 747
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 913
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 914
    .local v2, "durationToApex":F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 915
    .local v0, "distanceToApex":F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 916
    .local v1, "distanceToEdge":F
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 918
    .local v3, "totalDuration":F
    iget-wide v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a0000    # 1000.0f

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 919
    iput p2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 920
    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 921
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 727
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 6
    .param p1, "velocity"    # I

    .prologue
    .line 892
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f789374bc6a7efaL    # 0.006

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 897
    invoke-direct {p0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 898
    .local v2, "l":D
    sget v4, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 899
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 904
    invoke-direct {p0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 905
    .local v2, "l":D
    sget v4, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 906
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 974
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 975
    .local v2, "sign":F
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x44c80000    # 1600.0f

    div-float v1, v3, v4

    .line 978
    .local v1, "distance":F
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 980
    neg-float v3, v2

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 981
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v1, v3

    .line 984
    :cond_0
    iput v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 985
    float-to-int v3, v1

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 986
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 987
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    .end local v1    # "distance":F
    :goto_0
    float-to-int v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 988
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    if-lez v3, :cond_2

    const/16 v0, -0x320

    .line 989
    .local v0, "decelerate":I
    :goto_1
    const/high16 v3, 0x447a0000    # 1000.0f

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 992
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    .line 993
    iput-boolean v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    .line 995
    return-void

    .line 987
    .end local v0    # "decelerate":I
    .restart local v1    # "distance":F
    :cond_1
    neg-float v1, v1

    goto :goto_0

    .line 988
    .end local v1    # "distance":F
    :cond_2
    const/16 v0, 0x320

    goto :goto_1
.end method

.method private startAfterEdge(IIII)V
    .locals 14
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 933
    move/from16 v0, p2

    if-le p1, v0, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 934
    const-string v2, "OverScroller"

    const-string v3, "startAfterEdge called from a valid position"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 955
    :goto_0
    return-void

    .line 940
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v11, 0x1

    .line 941
    .local v11, "positive":Z
    :goto_1
    if-eqz v11, :cond_2

    move/from16 v8, p3

    .line 942
    .local v8, "edge":I
    :goto_2
    sub-int v10, p1, v8

    .line 943
    .local v10, "overDistance":I
    mul-int v2, v10, p4

    if-ltz v2, :cond_3

    const/4 v9, 0x1

    .line 944
    .local v9, "keepIncreasing":Z
    :goto_3
    if-eqz v9, :cond_4

    .line 946
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 940
    .end local v8    # "edge":I
    .end local v9    # "keepIncreasing":Z
    .end local v10    # "overDistance":I
    .end local v11    # "positive":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .restart local v11    # "positive":Z
    :cond_2
    move/from16 v8, p2

    .line 941
    goto :goto_2

    .line 943
    .restart local v8    # "edge":I
    .restart local v10    # "overDistance":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 948
    .restart local v9    # "keepIncreasing":Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v12

    .line 949
    .local v12, "totalDistance":D
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v12, v2

    if-lez v2, :cond_7

    .line 950
    if-eqz v11, :cond_5

    move/from16 v5, p2

    :goto_4
    if-eqz v11, :cond_6

    move v6, p1

    :goto_5
    iget v7, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    move-object v2, p0

    move v3, p1

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v5, p1

    goto :goto_4

    :cond_6
    move/from16 v6, p3

    goto :goto_5

    .line 952
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 926
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    .line 927
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 928
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fitOnBounceCurve(III)V

    .line 929
    invoke-direct {p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->onEdgeReached()V

    .line 930
    return-void

    :cond_0
    move v0, p3

    .line 927
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    const/4 v2, 0x1

    .line 806
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 808
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 809
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 810
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 811
    iput p2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 812
    sub-int v0, p1, p2

    .line 813
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 815
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 816
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 817
    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    float-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 818
    return-void
.end method

.method private static viscousFluid(FF)F
    .locals 5
    .param p0, "x"    # F
    .param p1, "distance"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1146
    const v0, 0x3ebc5ab2

    .line 1147
    .local v0, "start":F
    sub-float v1, v4, v0

    div-float v1, v4, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    div-float/2addr v1, p1

    add-float/2addr p0, v1

    .line 1148
    mul-float/2addr p0, p1

    .line 1149
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    .line 1150
    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    .line 1151
    sget v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 1152
    return p0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 999
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1021
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->update()Z

    .line 1022
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 1001
    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    if-eqz v1, :cond_0

    .line 1003
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 1005
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 1006
    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    .line 1007
    invoke-direct {p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1014
    :pswitch_2
    iget-wide v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 1015
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 999
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    .line 777
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 778
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 779
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 780
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 781
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 769
    return-void
.end method

.method fling(IIIII)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 823
    iput v7, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 824
    iput p5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 825
    iput-boolean v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 826
    # getter for: Landroid/widget/OppoOverScroller;->mMaximumVelocity:I
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v1

    if-gt p2, v1, :cond_0

    # getter for: Landroid/widget/OppoOverScroller;->mMaximumVelocity:I
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v1

    neg-int v1, v1

    if-ge p2, v1, :cond_1

    .line 827
    :cond_0
    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 828
    .local v0, "sign":F
    float-to-int v1, v0

    # getter for: Landroid/widget/OppoOverScroller;->mMaximumVelocity:I
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v4

    mul-int p2, v1, v4

    .line 830
    .end local v0    # "sign":F
    :cond_1
    iput p2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v1, p2

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    .line 833
    iput v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 838
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 839
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 840
    int-to-float v1, p2

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    .line 841
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    .line 842
    iput-boolean v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSpring:Z

    .line 844
    if-gt p1, p4, :cond_2

    if-ge p1, p3, :cond_4

    .line 845
    :cond_2
    iput-boolean v7, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSpring:Z

    .line 846
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startAfterEdge(IIII)V

    .line 889
    :cond_3
    :goto_0
    return-void

    .line 850
    :cond_4
    iput v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 851
    const-wide/16 v2, 0x0

    .line 853
    .local v2, "totalDistance":D
    if-eqz p2, :cond_5

    .line 856
    invoke-direct {p0, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDuration(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 861
    invoke-direct {p0, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v2

    .line 864
    :cond_5
    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDistance:I

    .line 865
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDistance:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 868
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-ge v1, p3, :cond_6

    .line 870
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 873
    :cond_6
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-le v1, p4, :cond_7

    .line 875
    iput p4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 878
    :cond_7
    if-eqz p5, :cond_3

    iget-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    if-nez v1, :cond_3

    .line 879
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 880
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    # getter for: Landroid/widget/OppoOverScroller;->mOverscrollDistance:I
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1000()I

    move-result v4

    if-gt v1, v4, :cond_8

    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    # getter for: Landroid/widget/OppoOverScroller;->mOverscrollDistance:I
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1000()I

    move-result v4

    neg-int v4, v4

    if-ge v1, v4, :cond_9

    .line 881
    :cond_8
    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 882
    .restart local v0    # "sign":F
    float-to-int v1, v0

    # getter for: Landroid/widget/OppoOverScroller;->mOverscrollDistance:I
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1000()I

    move-result v4

    mul-int/2addr v1, v4

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 884
    .end local v0    # "sign":F
    :cond_9
    iput v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 885
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    .line 886
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 961
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 962
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 963
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 966
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 967
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startAfterEdge(IIII)V

    .line 969
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 772
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 774
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 703
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    .line 704
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 786
    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 788
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 789
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 791
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 792
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 794
    if-ge p1, p2, :cond_1

    .line 795
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    .line 800
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 796
    :cond_1
    if-le p1, p3, :cond_0

    .line 797
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 800
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 750
    iput-boolean v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 752
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 753
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 755
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 756
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 759
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 760
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 761
    return-void
.end method

.method update()Z
    .locals 22

    .prologue
    .line 1031
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    .line 1032
    .local v12, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v6, v12, v18

    .line 1033
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x41800000    # 16.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1042
    .local v14, "timePassed":I
    const-wide/16 v8, 0x0

    .line 1044
    .local v8, "distance":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1139
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1140
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v17, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1142
    const/16 v17, 0x1

    :goto_0
    return v17

    .line 1046
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x458ca000    # 4500.0f

    div-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide v20, 0x3fd3333333333333L    # 0.3

    mul-double v18, v18, v20

    const-wide v20, 0x3fe6666666666666L    # 0.7

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 1047
    .local v15, "velocityCoef":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    move/from16 v17, v0

    mul-float v17, v17, v15

    const v18, 0x44bb8000    # 1500.0f

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb4d12d84aL    # 3.1415926

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide v20, 0x3fe921fb4d12d84aL    # 0.78539815

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v4, v17, v18

    .line 1050
    .local v4, "currV":F
    const/high16 v17, 0x41800000    # 16.0f

    mul-float v17, v17, v4

    move/from16 v0, v17

    float-to-double v8, v0

    .line 1051
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    move-wide/from16 v20, v0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_3

    .line 1052
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 1053
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 1054
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1056
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 1057
    .local v5, "delta":I
    if-nez v5, :cond_4

    .line 1058
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    div-double v18, v18, v8

    move-wide/from16 v0, v18

    double-to-int v5, v0

    .line 1060
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1061
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    .line 1063
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1064
    const/high16 v17, 0x447a0000    # 1000.0f

    mul-float v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    .line 1065
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    :cond_5
    if-gez v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    .line 1067
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1068
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1070
    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v4    # "currV":F
    .end local v5    # "delta":I
    .end local v15    # "velocityCoef":F
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSpring:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 1075
    :cond_8
    int-to-float v0, v14

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v16, v17, v18

    .line 1076
    .local v16, "x":F
    const/high16 v17, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v17}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v16

    .line 1077
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v16

    move/from16 v0, v17

    float-to-double v8, v0

    .line 1083
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    if-gez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpl-double v17, v8, v18

    if-gez v17, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    if-lez v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v17, v8, v18

    if-gtz v17, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mIsScrollList:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 1084
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x41800000    # 16.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1087
    int-to-float v0, v14

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v16, v17, v18

    .line 1088
    const/high16 v17, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v17}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v16

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v16

    move/from16 v0, v17

    float-to-double v8, v0

    .line 1092
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    goto/16 :goto_1

    .line 1095
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1096
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x41800000    # 16.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1097
    int-to-float v0, v14

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v16, v17, v18

    .line 1099
    const/high16 v17, 0x41600000    # 14.0f

    invoke-static/range {v16 .. v17}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v16

    .line 1100
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v16

    move/from16 v0, v17

    float-to-double v10, v0

    .line 1101
    .local v10, "nextDistance":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    if-gez v17, :cond_c

    sub-double v18, v10, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    cmpg-double v17, v18, v20

    if-ltz v17, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    if-lez v17, :cond_e

    sub-double v18, v10, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    cmpl-double v17, v18, v20

    if-lez v17, :cond_e

    .line 1103
    :cond_d
    move-wide v8, v10

    .line 1104
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1106
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    .line 1109
    .end local v10    # "nextDistance":D
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    if-gez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    if-lez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    :cond_11
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fed1eb851eb851fL    # 0.91

    cmpl-double v17, v18, v20

    if-gtz v17, :cond_12

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_0

    .line 1112
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v17, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 1113
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1117
    .end local v16    # "x":F
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 1118
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1123
    :pswitch_2
    int-to-float v0, v14

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    # getter for: Landroid/widget/OppoOverScroller;->SPRING_BACK_DURATION:I
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1100()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v16, v17, v18

    .line 1125
    .restart local v16    # "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mAccelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v16

    .line 1126
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v16

    move/from16 v0, v17

    float-to-double v8, v0

    .line 1127
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    move/from16 v17, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1131
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1132
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1133
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 1134
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1044
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    .line 720
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 721
    return-void
.end method
