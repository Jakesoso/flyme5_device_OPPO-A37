.class Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "ColorRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 83
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    # invokes: Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->shouldIgnore()Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->access$000(Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 87
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    # invokes: Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->shouldIgnore()Z
    invoke-static {v0}, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->access$000(Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/color/widget/ColorRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/color/widget/ColorRecyclerView;

    invoke-virtual {v0}, Lcom/color/widget/ColorRecyclerView;->getLayoutManager()Lcom/color/widget/ColorRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/color/widget/ColorRecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
