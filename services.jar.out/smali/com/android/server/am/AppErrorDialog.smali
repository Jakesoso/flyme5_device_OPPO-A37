.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final FREE_SPACE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AppErrorDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private mResultType:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTargetProcess:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/am/AppErrorDialog;->mResultType:I

    .line 61
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 193
    new-instance v11, Lcom/android/server/am/AppErrorDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance v11, Lcom/android/server/am/AppErrorDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/am/AppErrorDialog$2;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 66
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 69
    .local v10, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 70
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 71
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 77
    const/4 v5, 0x0

    .line 78
    .local v5, "errHandlingRes":I
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 79
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v8

    .line 80
    .local v8, "mwProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 81
    const/4 v6, 0x0

    .line 82
    .local v6, "isFloatingApp":Z
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 83
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v11}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingWindow(Landroid/content/Intent;)Z

    move-result v6

    .line 85
    :cond_0
    if-eqz v6, :cond_1

    .line 86
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-boolean v12, v0, Lcom/android/server/am/ProcessRecord;->inMaxOrRestore:Z

    invoke-virtual {v8, v11, v12}, Lcom/mediatek/multiwindow/MultiWindowProxy;->appErrorHandling(Ljava/lang/String;Z)I

    move-result v5

    .line 92
    .end local v6    # "isFloatingApp":Z
    .end local v8    # "mwProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    :cond_1
    const-class v11, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 93
    .local v4, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-interface {v4}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryCriticalLow()Z

    move-result v3

    .line 94
    .local v3, "criticalLow":Z
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, "name":Ljava/lang/CharSequence;
    if-eqz v9, :cond_7

    .line 96
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 97
    const/4 v11, 0x1

    if-ne v3, v11, :cond_6

    .line 98
    const v11, 0x8050037

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "message":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 109
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v8

    .line 110
    .restart local v8    # "mwProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 111
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5, v11}, Lcom/android/server/am/AppErrorDialog;->buildErrHandlingMessage(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 115
    .end local v8    # "mwProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 147
    :goto_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 149
    const/4 v11, -0x1

    const v12, 0x10404a1

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 153
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v11, :cond_3

    .line 154
    const/4 v11, -0x2

    const v12, 0x10404a2

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 159
    :cond_3
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4

    .line 160
    const/4 v11, -0x3

    const v12, 0x8050047

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 166
    :cond_4
    const v11, 0x1040499

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 168
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v11, v11, 0x110

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    move-object/from16 v0, p4

    iget-boolean v11, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v11, :cond_5

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7da

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 177
    :cond_5
    const/4 v11, 0x1

    if-ne v3, v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    if-eqz v11, :cond_c

    .line 178
    const-string v11, "AppErrorDialog"

    const-string v12, "do not show the error dialog!"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/AppErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    return-void

    .line 103
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "message":Ljava/lang/CharSequence;
    :cond_6
    const v11, 0x104049a

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 117
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v9    # "name":Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 119
    .restart local v9    # "name":Ljava/lang/CharSequence;
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.mediatek.bluetooth"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.process.acore"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a

    .line 121
    :cond_8
    const-string v11, "AppErrorDialog"

    const-string v12, "got target error process"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    .line 127
    :goto_3
    const/4 v11, 0x1

    if-ne v3, v11, :cond_b

    .line 128
    const v11, 0x8050039

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .restart local v7    # "message":Ljava/lang/CharSequence;
    :goto_4
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 138
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v8

    .line 139
    .restart local v8    # "mwProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 140
    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5, v11}, Lcom/android/server/am/AppErrorDialog;->buildErrHandlingMessage(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 144
    .end local v8    # "mwProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 124
    .end local v7    # "message":Ljava/lang/CharSequence;
    :cond_a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/AppErrorDialog;->mTargetProcess:Z

    goto :goto_3

    .line 132
    :cond_b
    const v11, 0x104049b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/CharSequence;
    goto :goto_4

    .line 184
    .restart local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-wide/32 v14, 0x493e0

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/am/AppErrorDialog;->mResultType:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/am/AppErrorDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/server/am/AppErrorDialog;->mResultType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method private buildErrHandlingMessage(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "lastMessage"    # Ljava/lang/CharSequence;
    .param p2, "errHandlingRes"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 234
    const-string p1, "System detect start floating window error and auto fixed!\nPlease try again!"

    .line 240
    .end local p1    # "lastMessage":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 235
    .restart local p1    # "lastMessage":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 236
    const-string p1, "System detect Max/Restore error and auto fixed!\nPlease try again!"

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This apk("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") can not running on Floating mode!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
