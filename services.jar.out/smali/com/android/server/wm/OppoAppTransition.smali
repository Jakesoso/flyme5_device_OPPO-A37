.class public Lcom/android/server/wm/OppoAppTransition;
.super Lcom/android/server/wm/AppTransition;
.source "OppoAppTransition.java"


# static fields
.field private static final ANIM_MORE_TIME:I = 0x1e

.field private static final DEFAULT_APP_TRANSITION_DURATION_ENTER:J = 0xc8L

.field private static final DEFAULT_APP_TRANSITION_DURATION_EXIT:J = 0xc8L

.field private static final EXITICONSCALEHEIGHT:F = 0.5f

.field private static final EXITICONSCALEWIDTH:F = 0.5f

.field private static final HEIGHTPERSENT:F = 0.75f

.field private static final ICONSCALEHEIGHT:F = 0.4f

.field private static final ICONSCALEWIDTH:F = 0.4f

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoAppTransition"

.field private static final WIDTHPERSENT:F = 0.6f

.field private static isOppoLauncher:Z


# instance fields
.field private isRecentTask:Z

.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mEnterPosition:[F

.field private mExitPosition:[F

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionEnterTemp:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionExitTemp:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionType:I

.field private final mOppoBezierInterpolatorEnter:Landroid/view/animation/OppoBezierInterpolator;

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x3

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    const/4 v4, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 58
    iput v4, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 75
    iput v4, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    .line 76
    iput v4, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    .line 77
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    .line 78
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    .line 96
    iput v4, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    .line 98
    iput-boolean v4, p0, Lcom/android/server/wm/OppoAppTransition;->isRecentTask:Z

    .line 102
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x10e0000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mConfigShortAnimTime:I

    .line 107
    new-instance v1, Landroid/view/animation/OppoBezierInterpolator;

    const-wide v4, 0x3fb47ae140000000L    # 0.07999999821186066

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x1

    move-wide v6, v2

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OppoBezierInterpolator;-><init>(DDDDZ)V

    iput-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoBezierInterpolatorEnter:Landroid/view/animation/OppoBezierInterpolator;

    .line 109
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 110
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 112
    .local v11, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 113
    .local v0, "windowSize":Landroid/graphics/Point;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 114
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    .line 115
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    .line 117
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/OppoAppTransition;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/OppoAppTransition;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wm/OppoAppTransition;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/OppoAppTransition;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    return p1
.end method

.method private createOppoCustomAnimLocked(Ljava/lang/String;ZII)Landroid/view/animation/Animation;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 329
    const/4 v6, 0x0

    .line 330
    .local v6, "a":Landroid/view/animation/Animation;
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getLowerDigit(I)I

    move-result v8

    .line 333
    .local v8, "startWidth":I
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getLowerDigit(I)I

    move-result v7

    .line 336
    .local v7, "startHight":I
    if-nez v8, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v0

    if-ge v0, p3, :cond_1

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v0

    if-lt v0, p4, :cond_4

    .line 339
    :cond_1
    const/4 v9, 0x0

    .line 340
    .local v9, "startX":I
    const/4 v10, 0x0

    .line 341
    .local v10, "startY":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    .line 342
    const-string v0, "OppoAppTransition"

    const-string v1, "OppoAppTransition createOppoCustomAnimLocked  start center"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_3

    .line 349
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition createOppoCustomAnimLocked  strartX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startHight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_3
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/OppoAppTransition;->caculatePosition(FFFF[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    .line 353
    if-eqz p2, :cond_5

    .line 355
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .end local v6    # "a":Landroid/view/animation/Animation;
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 356
    .restart local v6    # "a":Landroid/view/animation/Animation;
    const-wide/16 v0, 0xc8

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 357
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 366
    .end local v7    # "startHight":I
    .end local v8    # "startWidth":I
    .end local v9    # "startX":I
    .end local v10    # "startY":I
    :goto_1
    return-object v6

    .line 345
    .restart local v7    # "startHight":I
    .restart local v8    # "startWidth":I
    :cond_4
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v9

    .line 346
    .restart local v9    # "startX":I
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getHighDigit(I)I

    move-result v10

    .restart local v10    # "startY":I
    goto :goto_0

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mExitPosition:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OppoAppTransition;->prepareOPPOScaleUpExitAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v6

    .line 360
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto :goto_1

    .line 363
    .end local v7    # "startHight":I
    .end local v8    # "startWidth":I
    .end local v9    # "startX":I
    .end local v10    # "startY":I
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p2, :cond_7

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/OppoAppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    goto :goto_2
.end method

.method private createOppoScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 264
    const/4 v6, 0x0

    .line 265
    .local v6, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_1

    .line 266
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/OppoAppTransition;->caculatePosition(FFFF[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/server/wm/OppoAppTransition;->mEnterPosition:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/OppoAppTransition;->prepareOPPOScaleUpEnterAnimation(FFF)Landroid/view/animation/Animation;

    move-result-object v6

    .line 268
    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 269
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lcom/android/server/wm/OppoAppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OppoAppTransition$1;-><init>(Lcom/android/server/wm/OppoAppTransition;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 294
    :cond_0
    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 295
    invoke-virtual {v6, p3, p4, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 296
    return-object v6

    .line 292
    :cond_1
    invoke-direct {p0, p1, v8, p3, p4}, Lcom/android/server/wm/OppoAppTransition;->createOppoScaleUpExitAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_0
.end method

.method private createOppoScaleUpExitAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 301
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_0

    .line 302
    const-string v2, "OppoAppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OppoAppTransition createOppoScaleUpExitAnimationLocked  isOppoLauncher = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    if-nez v2, :cond_3

    .line 306
    const/16 v2, 0xe

    if-eq p1, v2, :cond_1

    const/16 v2, 0xf

    if-ne p1, v2, :cond_2

    .line 312
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v5, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 313
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    :goto_0
    move-object v1, v0

    .line 325
    .end local v0    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 316
    .end local v1    # "a":Ljava/lang/Object;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 322
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 323
    .restart local v0    # "a":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xe6

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 324
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    move-object v1, v0

    .line 325
    .restart local v1    # "a":Ljava/lang/Object;
    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 197
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    if-eqz p1, :cond_3

    .line 200
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_1

    .line 201
    const-string p1, "android"

    .line 203
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mContext:Landroid/content/Context;

    .line 183
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    invoke-static {p2}, Lcom/oppo/util/OppoAnimSynthesisNumber;->isSynthesisNumber(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OppoAppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 185
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 186
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 187
    move v0, p2

    .line 190
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 191
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 193
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private reviseCustomExitAnim(I)V
    .locals 2
    .param p1, "transit"    # I

    .prologue
    const/4 v1, 0x0

    .line 223
    sget-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    if-nez v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 227
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    .line 228
    iget v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    .line 229
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    .line 230
    iput v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    .line 232
    :cond_0
    return-void
.end method

.method static setAppWindowTokenLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .param p0, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oppo.launcher/.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    .line 217
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition setAppWindowTokenLocked isOppoLauncher ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " atoken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OppoAppTransition;->isOppoLauncher:Z

    goto :goto_0
.end method


# virtual methods
.method public caculatePosition(FFFF[F)[F
    .locals 12
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "position"    # [F

    .prologue
    .line 429
    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    if-eqz v5, :cond_0

    .line 430
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p1, v5

    add-float/2addr v5, p3

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, p1

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    add-float/2addr v5, p3

    const v6, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v6, p1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 431
    .local v3, "pw":I
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p2, v5

    add-float v5, v5, p4

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, p2

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v5, v6

    add-float v5, v5, p4

    float-to-int v2, v5

    .line 432
    .local v2, "ph":I
    const/4 v5, 0x0

    int-to-float v6, v3

    aput v6, p5, v5

    .line 433
    const/4 v5, 0x1

    int-to-float v6, v2

    aput v6, p5, v5

    .line 435
    .end local v2    # "ph":I
    .end local v3    # "pw":I
    :cond_0
    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v5, p3, v5

    if-gez v5, :cond_1

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v5, p4, v5

    if-gez v5, :cond_1

    .line 436
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, p5, v5

    .line 437
    const/4 v5, 0x1

    iget v6, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, p5, v5

    .line 439
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p1, v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p2, v5

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 440
    .local v0, "a":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p1, v5

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p2, v5

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 441
    .local v1, "b":F
    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v5, p3

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p1, v6

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v5, p0, Lcom/android/server/wm/OppoAppTransition;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v5, p4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p2, v8

    sub-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 442
    .local v4, "px":F
    sub-float v5, v1, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 443
    const/4 v5, 0x2

    sub-float v6, v4, v0

    sub-float v7, v1, v0

    div-float/2addr v6, v7

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v6, v7

    aput v6, p5, v5

    .line 445
    :cond_2
    return-object p5
.end method

.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "OppoAppTransition"

    const-string v1, "OppoAppTransition clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iput v2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 167
    iput-boolean v2, p0, Lcom/android/server/wm/OppoAppTransition;->isRecentTask:Z

    .line 168
    invoke-super {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 169
    return-void
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "isFullScreen"    # Z
    .param p10, "isVoiceInteraction"    # Z

    .prologue
    const/4 v4, 0x3

    .line 238
    invoke-direct {p0, p2}, Lcom/android/server/wm/OppoAppTransition;->reviseCustomExitAnim(I)V

    .line 240
    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-direct {p0, v1, p3, p4, p5}, Lcom/android/server/wm/OppoAppTransition;->createOppoCustomAnimLocked(Ljava/lang/String;ZII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 242
    .local v0, "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "OppoAppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    return-object v0

    .line 247
    :cond_2
    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 248
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/wm/OppoAppTransition;->createOppoScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v0

    .line 249
    .restart local v0    # "a":Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_1

    :cond_3
    const-string v1, "OppoAppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_4
    invoke-super/range {p0 .. p10}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/OppoAppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OppoAppTransition;->isRecentTask:Z

    if-nez v0, :cond_1

    .line 144
    iput v2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 145
    iput-object p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 146
    iput p2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnter:I

    .line 147
    iput p3, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExit:I

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    const-string v1, "com.coloros.recents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iput-boolean v2, p0, Lcom/android/server/wm/OppoAppTransition;->isRecentTask:Z

    .line 151
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1

    .line 152
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition overridePendingAppTransition packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRecentTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/OppoAppTransition;->isRecentTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enterAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exitAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 158
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/OppoAppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionType:I

    .line 124
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartX:I

    .line 125
    iput p2, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartY:I

    .line 126
    iput p3, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartWidth:I

    .line 127
    iput p4, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionStartHeight:I

    .line 129
    div-int/lit8 v0, p3, 0x4

    add-int/2addr v0, p1

    div-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getSynthesisNumber(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionEnterTemp:I

    .line 130
    div-int/lit8 v0, p3, 0x4

    add-int/2addr v0, p2

    div-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Lcom/oppo/util/OppoAnimSynthesisNumber;->getSynthesisNumber(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OppoAppTransition;->mNextAppTransitionExitTemp:I

    .line 132
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition overridePendingAppTransitionScaleUp  startX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    .line 138
    return-void
.end method

.method public prepareOPPOScaleUpEnterAnimation(FFF)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "time"    # F

    .prologue
    const/high16 v9, 0x43480000    # 200.0f

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 384
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 386
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mOppoBezierInterpolatorEnter:Landroid/view/animation/OppoBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 387
    add-float v1, v9, p3

    float-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 388
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 389
    .local v7, "alpha":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 390
    const/high16 v1, 0x40000000    # 2.0f

    add-float v2, v9, p3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 392
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 393
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 394
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 395
    return-object v8
.end method

.method public prepareOPPOScaleUpExitAnimation(FF)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 414
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 416
    .local v0, "scale":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/OppoAppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 417
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 418
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 419
    .local v7, "alpha":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/server/wm/OppoAppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 420
    const-wide/16 v2, 0xa0

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 422
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 423
    .local v8, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 424
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 425
    return-object v8
.end method

.method public setCurrentUser(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 173
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "OppoAppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoAppTransition setCurrentUser () newUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iput p1, p0, Lcom/android/server/wm/OppoAppTransition;->mCurrentUserId:I

    .line 177
    invoke-super {p0, p1}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    .line 178
    return-void
.end method
