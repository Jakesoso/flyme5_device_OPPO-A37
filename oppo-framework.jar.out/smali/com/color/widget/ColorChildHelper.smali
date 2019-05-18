.class Lcom/color/widget/ColorChildHelper;
.super Ljava/lang/Object;
.source "ColorChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorChildHelper$Callback;,
        Lcom/color/widget/ColorChildHelper$Bucket;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ChildrenHelper"


# instance fields
.field final mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

.field final mCallback:Lcom/color/widget/ColorChildHelper$Callback;

.field final mHiddenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/color/widget/ColorChildHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/color/widget/ColorChildHelper$Callback;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    .line 50
    new-instance v0, Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-direct {v0}, Lcom/color/widget/ColorChildHelper$Bucket;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    .line 52
    return-void
.end method

.method private getOffset(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v4, -0x1

    .line 90
    if-gez p1, :cond_1

    move v2, v4

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    iget-object v5, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v5}, Lcom/color/widget/ColorChildHelper$Callback;->getChildCount()I

    move-result v1

    .line 94
    .local v1, "limit":I
    move v2, p1

    .line 95
    .local v2, "offset":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 96
    iget-object v5, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v5, v2}, Lcom/color/widget/ColorChildHelper$Bucket;->countOnesBefore(I)I

    move-result v3

    .line 97
    .local v3, "removedBefore":I
    sub-int v5, v2, v3

    sub-int v0, p1, v5

    .line 98
    .local v0, "diff":I
    if-nez v0, :cond_2

    .line 99
    :goto_2
    iget-object v4, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v4, v2}, Lcom/color/widget/ColorChildHelper$Bucket;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 104
    :cond_2
    add-int/2addr v2, v0

    .line 106
    goto :goto_1

    .end local v0    # "diff":I
    .end local v3    # "removedBefore":I
    :cond_3
    move v2, v4

    .line 107
    goto :goto_0
.end method


# virtual methods
.method addView(Landroid/view/View;IZ)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "hidden"    # Z

    .prologue
    .line 74
    if-gez p2, :cond_1

    .line 75
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1}, Lcom/color/widget/ColorChildHelper$Callback;->getChildCount()I

    move-result v0

    .line 79
    .local v0, "offset":I
    :goto_0
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v1, v0, p3}, Lcom/color/widget/ColorChildHelper$Bucket;->insert(IZ)V

    .line 80
    if-eqz p3, :cond_0

    .line 81
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1, p1, v0}, Lcom/color/widget/ColorChildHelper$Callback;->addView(Landroid/view/View;I)V

    .line 87
    return-void

    .line 77
    .end local v0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/color/widget/ColorChildHelper;->getOffset(I)I

    move-result v0

    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method addView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hidden"    # Z

    .prologue
    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/color/widget/ColorChildHelper;->addView(Landroid/view/View;IZ)V

    .line 62
    return-void
.end method

.method attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "hidden"    # Z

    .prologue
    .line 203
    if-gez p2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1}, Lcom/color/widget/ColorChildHelper$Callback;->getChildCount()I

    move-result v0

    .line 208
    .local v0, "offset":I
    :goto_0
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v1, v0, p4}, Lcom/color/widget/ColorChildHelper$Bucket;->insert(IZ)V

    .line 209
    if-eqz p4, :cond_0

    .line 210
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1, p1, v0, p3}, Lcom/color/widget/ColorChildHelper$Callback;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void

    .line 206
    .end local v0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/color/widget/ColorChildHelper;->getOffset(I)I

    move-result v0

    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method detachViewFromParent(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/color/widget/ColorChildHelper;->getOffset(I)I

    move-result v0

    .line 257
    .local v0, "offset":I
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorChildHelper$Bucket;->remove(I)Z

    .line 258
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1, v0}, Lcom/color/widget/ColorChildHelper$Callback;->detachViewFromParent(I)V

    .line 262
    return-void
.end method

.method findHiddenNonRemovedView(II)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "type"    # I

    .prologue
    .line 180
    iget-object v4, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 181
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 182
    iget-object v4, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 183
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v4, v3}, Lcom/color/widget/ColorChildHelper$Callback;->getChildViewHolder(Landroid/view/View;)Lcom/color/widget/ColorRecyclerView$ViewHolder;

    move-result-object v1

    .line 184
    .local v1, "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    invoke-virtual {v1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 189
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v3

    .line 181
    .restart local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .restart local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "holder":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getChildAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/color/widget/ColorChildHelper;->getOffset(I)I

    move-result v0

    .line 157
    .local v0, "offset":I
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1, v0}, Lcom/color/widget/ColorChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method getChildCount()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v0}, Lcom/color/widget/ColorChildHelper$Callback;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getUnfilteredChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v0, p1}, Lcom/color/widget/ColorChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getUnfilteredChildCount()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v0}, Lcom/color/widget/ColorChildHelper$Callback;->getChildCount()I

    move-result v0

    return v0
.end method

.method hide(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1, p1}, Lcom/color/widget/ColorChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 303
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 304
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorChildHelper$Bucket;->set(I)V

    .line 310
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method indexOfChild(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 271
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v2, p1}, Lcom/color/widget/ColorChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 272
    .local v0, "index":I
    if-ne v0, v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorChildHelper$Bucket;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorChildHelper$Bucket;->countOnesBefore(I)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method isHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeAllViewsUnfiltered()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v0}, Lcom/color/widget/ColorChildHelper$Bucket;->reset()V

    .line 165
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v0}, Lcom/color/widget/ColorChildHelper$Callback;->removeAllViews()V

    .line 170
    return-void
.end method

.method removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1, p1}, Lcom/color/widget/ColorChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 117
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v1, v0}, Lcom/color/widget/ColorChildHelper$Bucket;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v1, v0}, Lcom/color/widget/ColorChildHelper$Callback;->removeViewAt(I)V

    goto :goto_0
.end method

.method removeViewAt(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/color/widget/ColorChildHelper;->getOffset(I)I

    move-result v0

    .line 137
    .local v0, "offset":I
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v2, v0}, Lcom/color/widget/ColorChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorChildHelper$Bucket;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v2, v0}, Lcom/color/widget/ColorChildHelper$Callback;->removeViewAt(I)V

    goto :goto_0
.end method

.method removeViewIfHidden(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 328
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v2, p1}, Lcom/color/widget/ColorChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 329
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorChildHelper$Bucket;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v2, v0}, Lcom/color/widget/ColorChildHelper$Bucket;->remove(I)Z

    .line 337
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    :cond_2
    iget-object v2, p0, Lcom/color/widget/ColorChildHelper;->mCallback:Lcom/color/widget/ColorChildHelper$Callback;

    invoke-interface {v2, v0}, Lcom/color/widget/ColorChildHelper$Callback;->removeViewAt(I)V

    goto :goto_0

    .line 344
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mBucket:Lcom/color/widget/ColorChildHelper$Bucket;

    invoke-virtual {v1}, Lcom/color/widget/ColorChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
