.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 3628
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3631
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3679
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3633
    :pswitch_1
    const-string v0, "MSG_INVALIDATE"

    goto :goto_0

    .line 3635
    :pswitch_2
    const-string v0, "MSG_INVALIDATE_RECT"

    goto :goto_0

    .line 3637
    :pswitch_3
    const-string v0, "MSG_DIE"

    goto :goto_0

    .line 3639
    :pswitch_4
    const-string v0, "MSG_RESIZED"

    goto :goto_0

    .line 3641
    :pswitch_5
    const-string v0, "MSG_RESIZED_REPORT"

    goto :goto_0

    .line 3643
    :pswitch_6
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    goto :goto_0

    .line 3645
    :pswitch_7
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    goto :goto_0

    .line 3647
    :pswitch_8
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    goto :goto_0

    .line 3649
    :pswitch_9
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    goto :goto_0

    .line 3651
    :pswitch_a
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    goto :goto_0

    .line 3653
    :pswitch_b
    const-string v0, "MSG_FINISH_INPUT_CONNECTION"

    goto :goto_0

    .line 3655
    :pswitch_c
    const-string v0, "MSG_CHECK_FOCUS"

    goto :goto_0

    .line 3657
    :pswitch_d
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    goto :goto_0

    .line 3659
    :pswitch_e
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    goto :goto_0

    .line 3661
    :pswitch_f
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_0

    .line 3663
    :pswitch_10
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_0

    .line 3665
    :pswitch_11
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    goto :goto_0

    .line 3667
    :pswitch_12
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    goto :goto_0

    .line 3669
    :pswitch_13
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    goto :goto_0

    .line 3671
    :pswitch_14
    const-string v0, "MSG_DISPATCH_DONE_ANIMATING"

    goto :goto_0

    .line 3673
    :pswitch_15
    const-string v0, "MSG_WINDOW_MOVED"

    goto :goto_0

    .line 3675
    :pswitch_16
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    goto :goto_0

    .line 3677
    :pswitch_17
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    goto :goto_0

    .line 3631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3684
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 3949
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3686
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3689
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 3690
    .local v17, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 3691
    invoke-virtual/range {v17 .. v17}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_0

    .line 3694
    .end local v17    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3695
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_0

    .line 3698
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3701
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_0

    .line 3705
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 3706
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 3716
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_0

    .line 3717
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 3719
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v9, Landroid/content/res/Configuration;

    .line 3720
    .local v9, "config":Landroid/content/res/Configuration;
    if-eqz v9, :cond_3

    .line 3721
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 3723
    :cond_3
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3724
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle RESIZE: message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3729
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3730
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3731
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3732
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3734
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3736
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 3737
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3740
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 3741
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/View;)V

    .line 3743
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3747
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v9    # "config":Landroid/content/res/Configuration;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_0

    .line 3748
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v23

    .line 3749
    .local v23, "w":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 3750
    .local v14, "h":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 3751
    .local v18, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 3752
    .local v22, "t":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 3753
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v4, v18, v23

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3754
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v22

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 3755
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v4, v22, v14

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3757
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 3758
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/View;)V

    .line 3760
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3764
    .end local v14    # "h":I
    .end local v18    # "l":I
    .end local v22    # "t":I
    .end local v23    # "w":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_0

    .line 3765
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_11

    const/4 v15, 0x1

    .line 3766
    .local v15, "hasWindowFocus":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v15, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 3768
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v3, v15}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Z)V

    .line 3770
    if-eqz v15, :cond_8

    .line 3771
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_12

    const/16 v16, 0x1

    .line 3772
    .local v16, "inTouchMode":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v16

    # invokes: Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z
    invoke-static {v3, v0}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;Z)Z

    .line 3774
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3775
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3777
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 3778
    .local v19, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v19, :cond_13

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 3779
    .local v21, "surfaceInsets":Landroid/graphics/Rect;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v5, v5, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3798
    .end local v16    # "inTouchMode":Z
    .end local v19    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v21    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 3801
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3802
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 3803
    if-eqz v15, :cond_9

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 3805
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 3807
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v3}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 3808
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v15}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 3809
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, v15}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 3812
    :cond_a
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_IMF:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$700()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3813
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle MSG_WINDOW_FOCUS_CHANGED: hasWindowFocus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastWasImTarget = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", softInputMode = #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", window flags = #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    :cond_b
    if-eqz v15, :cond_10

    .line 3831
    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3835
    const/4 v13, 0x0

    .line 3836
    .local v13, "fullScreen":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_15

    const/4 v13, 0x1

    .line 3839
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_c

    if-nez v13, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_f

    .line 3843
    :cond_d
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_IMF:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$700()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3844
    const-string v3, "ViewRootImpl"

    const-string v4, "Application Window may not use IME, just notify imm on window gained focus"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v6, :cond_16

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 3855
    .end local v13    # "fullScreen":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3857
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3860
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 3863
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3864
    if-eqz v15, :cond_0

    .line 3865
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 3765
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v15    # "hasWindowFocus":Z
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 3771
    .restart local v15    # "hasWindowFocus":Z
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 3778
    .restart local v16    # "inTouchMode":Z
    .restart local v19    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 3781
    .end local v19    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v10

    .line 3782
    .local v10, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v3, "ViewRootImpl"

    const-string v4, "OutOfResourcesException locking surface"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3784
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 3785
    const-string v3, "ViewRootImpl"

    const-string v4, "No processes killed for memory; killing self"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3792
    :cond_14
    :goto_7
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3788
    :catch_1
    move-exception v12

    .line 3789
    .local v12, "ex":Landroid/os/RemoteException;
    const-string v3, "ViewRootImpl"

    const-string v4, "RemoteException when call outOfMemory."

    invoke-static {v3, v4, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 3836
    .end local v10    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v16    # "inTouchMode":Z
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v13    # "fullScreen":Z
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 3848
    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 3872
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "fullScreen":Z
    .end local v15    # "hasWindowFocus":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    .line 3875
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 3876
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Landroid/view/InputEvent;

    .line 3877
    .local v11, "event":Landroid/view/InputEvent;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/InputEventReceiver;

    .line 3878
    .local v20, "receiver":Landroid/view/InputEventReceiver;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v3, v11, v0, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 3879
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 3882
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "event":Landroid/view/InputEvent;
    .end local v20    # "receiver":Landroid/view/InputEventReceiver;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/InputEvent;

    .line 3883
    .restart local v11    # "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-virtual {v3, v11, v4, v5, v6}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3886
    .end local v11    # "event":Landroid/view/InputEvent;
    :pswitch_d
    # getter for: Landroid/view/ViewRootImpl;->LOCAL_LOGV:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$800()Z

    move-result v3

    if-nez v3, :cond_17

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_KEY:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$900()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3887
    :cond_17
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatching key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from IME to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    :cond_18
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/KeyEvent;

    .line 3892
    .local v11, "event":Landroid/view/KeyEvent;
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_19

    .line 3896
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    invoke-static {v11, v3}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v11

    .line 3899
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v11, v4, v5, v6}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3902
    .end local v11    # "event":Landroid/view/KeyEvent;
    :pswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3903
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    .line 3904
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 3908
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3909
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    .line 3910
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .line 3914
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3915
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3920
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/DragEvent;

    .line 3921
    .local v11, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v3, v11, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 3922
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V
    invoke-static {v3, v11}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 3925
    .end local v11    # "event":Landroid/view/DragEvent;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_0

    .line 3928
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/res/Configuration;

    .line 3929
    .restart local v9    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3930
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v3, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 3932
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .line 3935
    .end local v9    # "config":Landroid/content/res/Configuration;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_0

    .line 3938
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    goto/16 :goto_0

    .line 3941
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3942
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3946
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    goto/16 :goto_0

    .line 3684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_8
        :pswitch_c
        :pswitch_17
    .end packed-switch
.end method
