.class public Lcom/color/widget/ColorRecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4287
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 4289
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    .line 4290
    const/4 v0, 0x0

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapHeapForType(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/color/widget/ColorRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4374
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4375
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    if-nez v0, :cond_0

    .line 4376
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4377
    .restart local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4378
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 4379
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4382
    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Lcom/color/widget/ColorRecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;

    .prologue
    .line 4341
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4342
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4295
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4296
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 4345
    iget v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4346
    return-void
.end method

.method public getRecycledView(I)Lcom/color/widget/ColorRecyclerView$ViewHolder;
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    .line 4309
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4310
    .local v2, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4311
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 4312
    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .line 4313
    .local v1, "scrap":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4316
    .end local v0    # "index":I
    .end local v1    # "scrap":Lcom/color/widget/ColorRecyclerView$ViewHolder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onAdapterChanged(Lcom/color/widget/ColorRecyclerView$Adapter;Lcom/color/widget/ColorRecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/color/widget/ColorRecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 4362
    if-eqz p1, :cond_0

    .line 4363
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->detach()V

    .line 4365
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_1

    .line 4366
    invoke-virtual {p0}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->clear()V

    .line 4368
    :cond_1
    if-eqz p2, :cond_2

    .line 4369
    invoke-virtual {p0, p2}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->attach(Lcom/color/widget/ColorRecyclerView$Adapter;)V

    .line 4371
    :cond_2
    return-void
.end method

.method public putRecycledView(Lcom/color/widget/ColorRecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "scrap"    # Lcom/color/widget/ColorRecyclerView$ViewHolder;

    .prologue
    .line 4331
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 4332
    .local v1, "viewType":I
    invoke-direct {p0, v1}, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->getScrapHeapForType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4333
    .local v0, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 4338
    :goto_0
    return-void

    .line 4336
    :cond_0
    invoke-virtual {p1}, Lcom/color/widget/ColorRecyclerView$ViewHolder;->resetInternal()V

    .line 4337
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMaxRecycledViews(II)V
    .locals 2
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .prologue
    .line 4299
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4300
    iget-object v1, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4301
    .local v0, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    if-eqz v0, :cond_0

    .line 4302
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 4303
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4306
    :cond_0
    return-void
.end method

.method size()I
    .locals 4

    .prologue
    .line 4320
    const/4 v0, 0x0

    .line 4321
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4322
    iget-object v3, p0, Lcom/color/widget/ColorRecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4323
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    .line 4324
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 4321
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4327
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/color/widget/ColorRecyclerView$ViewHolder;>;"
    :cond_1
    return v0
.end method