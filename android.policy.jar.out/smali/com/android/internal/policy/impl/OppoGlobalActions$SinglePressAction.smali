.class abstract Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mIconResId:I

    .line 472
    iput p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mMessageResId:I

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 474
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mIconResId:I

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mMessageResId:I

    .line 479
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 480
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 494
    const v3, 0xc090443

    const/4 v4, 0x0

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 496
    .local v2, "v":Landroid/view/View;
    const v3, 0xc020434

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 497
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0xc020499

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 499
    .local v1, "messageView":Landroid/widget/TextView;
    const v3, 0xc020422

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 501
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :goto_0
    return-object v2

    .line 505
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
