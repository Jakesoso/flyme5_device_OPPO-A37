.class Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsService$1;

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 786
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 787
    .local v4, "phoneId":I
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 959
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 789
    :pswitch_1
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_IMS_REGISTRATION_INFO"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 808
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x2

    aget v8, v10, v11

    .line 809
    .local v8, "socketId":I
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v9

    .line 810
    .local v9, "subId":I
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v7

    .line 811
    .local v7, "slotId":I
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS: socketId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mActivePhoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " subId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " slotId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    if-eq v8, v7, :cond_1

    .line 815
    const-string v10, "ImsService"

    const-string v11, "IMS: ignore other slot\'s registration event"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    :cond_1
    const/4 v3, 0x3

    .line 821
    .local v3, "newImsRegInfo":I
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 822
    const/4 v3, 0x0

    .line 827
    :goto_1
    const-string v10, "persist.ims.simulate"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 828
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x0

    .line 830
    :goto_2
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_2
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    const/4 v11, 0x1

    aget v2, v10, v11

    .line 838
    .local v2, "newImsExtInfo":I
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newReg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " oldReg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v10, v3}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$802(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 842
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationStateChange(I)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$900(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    .line 846
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newRegExt:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "oldRegExt:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    if-nez v10, :cond_5

    .line 850
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v10, v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1002(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 854
    :goto_3
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    goto/16 :goto_0

    .line 824
    .end local v2    # "newImsExtInfo":I
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 828
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 852
    .restart local v2    # "newImsExtInfo":I
    :cond_5
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1002(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto :goto_3

    .line 860
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "newImsExtInfo":I
    .end local v3    # "newImsRegInfo":I
    .end local v7    # "slotId":I
    .end local v8    # "socketId":I
    .end local v9    # "subId":I
    :pswitch_2
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_IMS_ENABLING_URC: mActivePhoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    if-eq v10, v4, :cond_6

    .line 865
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10, v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$402(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 868
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v1, "intent":Landroid/content/Intent;
    const-string v10, "android:phone_id"

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 870
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 872
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->enableImsAdapter()V

    .line 873
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 874
    const-string v10, "ro.mtk_wfc_support"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 875
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$700(Lcom/mediatek/internal/telephony/ims/ImsService;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "user_selected_wfc_preference"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->sendWfcProfileInfo(I)V

    goto/16 :goto_0

    .line 883
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_IMS_ENABLED_URC"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 889
    :pswitch_4
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_IMS_DISABLING_URC: mActivePhoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    if-eq v10, v4, :cond_0

    .line 894
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10, v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$402(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto/16 :goto_0

    .line 899
    :pswitch_5
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_IMS_DISABLED_URC"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS: phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 904
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->disableImsAdapter(Z)V

    .line 905
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1202(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto/16 :goto_0

    .line 910
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_6
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_SET_IMS_ENABLED_DONE"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 916
    :pswitch_7
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_SET_IMS_DISABLE_DONE"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 920
    :pswitch_8
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_INCOMING_CALL_INDICATION"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 922
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    invoke-static {v10, v0}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1300(Lcom/mediatek/internal/telephony/ims/ImsService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 925
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_CALL_RING"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 928
    :pswitch_a
    const-string v10, "ImsService"

    const-string v11, "receive EVENT_RADIO_NOT_AVAILABLE"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 930
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->disableImsAdapter(Z)V

    goto/16 :goto_0

    .line 933
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 934
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v6, v10

    check-cast v6, [I

    .line 936
    .local v6, "sipMessage":[I
    if-eqz v6, :cond_0

    .line 937
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Method ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Reg cause ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v10, 0x3

    aget v10, v6, v10

    if-eqz v10, :cond_7

    const/4 v10, 0x3

    aget v10, v6, v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_0

    .line 941
    :cond_7
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const/4 v12, 0x3

    aget v12, v6, v12

    const/4 v13, 0x4

    aget v13, v6, v13

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->translateRegErrors(II)I
    invoke-static {v11, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1400(Lcom/mediatek/internal/telephony/ims/ImsService;II)I

    move-result v11

    iput v11, v10, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    goto/16 :goto_0

    .line 947
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "sipMessage":[I
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 948
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v10, "handoverResult"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 950
    .local v5, "result":Z
    const-string v10, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_HANDOVER_DONE_INDICATION result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    if-eqz v5, :cond_0

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    if-nez v10, :cond_0

    .line 952
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    goto/16 :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
