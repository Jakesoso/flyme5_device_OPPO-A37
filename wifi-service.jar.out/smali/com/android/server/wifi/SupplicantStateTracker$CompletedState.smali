.class Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 649
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$402(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 652
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1002(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 663
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWrongkeyCount:I
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$802(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 664
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->removeTimeoutEvent()V
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$500(Lcom/android/server/wifi/SupplicantStateTracker;)V

    .line 665
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringAutoConnect:Z
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 669
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$002(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 670
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # setter for: Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringAutoConnect:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    .line 673
    :cond_2
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 676
    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 704
    :goto_0
    return v2

    .line 679
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 680
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 681
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$700(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v3

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1100(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 686
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :goto_1
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 689
    .restart local v0    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1200(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V

    goto :goto_1

    .line 692
    .end local v0    # "state":Landroid/net/wifi/SupplicantState;
    .end local v1    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    sget-object v4, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1100(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    .line 693
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    # getter for: Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1300(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$1800(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 677
    nop

    :sswitch_data_0
    .sparse-switch
        0x2006f -> :sswitch_2
        0x24006 -> :sswitch_0
        0x2402c -> :sswitch_1
    .end sparse-switch
.end method
