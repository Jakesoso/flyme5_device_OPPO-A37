.class Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Lcom/android/internal/policy/impl/OppoGlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/OppoGlobalActions;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/OppoGlobalActions$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 371
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    .line 374
    .local v0, "action":Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$300(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 371
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    .end local v0    # "action":Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
    :cond_1
    return v1
.end method

.method public getItem(I)Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "filteredPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 401
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    .line 402
    .local v0, "action":Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$300(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    :cond_0
    if-ne v1, p1, :cond_1

    .line 411
    return-object v0

    .line 413
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    .end local v0    # "action":Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range of showable actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filtered count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keyguardshowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mKeyguardShowing:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$300(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", provisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mDeviceProvisioned:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$400(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 422
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    move-result-object v0

    .line 427
    .local v0, "action":Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$500(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$500(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/OppoGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
