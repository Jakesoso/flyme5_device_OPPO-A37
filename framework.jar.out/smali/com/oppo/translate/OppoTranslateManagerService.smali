.class public Lcom/oppo/translate/OppoTranslateManagerService;
.super Lcom/oppo/translate/IOppoTranslateManager$Stub;
.source "OppoTranslateManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/translate/OppoTranslateManagerService$1;,
        Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE:Ljava/lang/String; = "OppoTranslateManagerService"

.field private static final TAG:Ljava/lang/String; = "OppoTranslateManagerService"

.field private static final TRANSLATE_ACTION:Ljava/lang/String; = "com.oppo.intent.action.TRANSLATE"

.field private static sInstance:Lcom/oppo/translate/OppoTranslateManagerService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/translate/OppoTranslateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

.field private final mMyPackageMonitor:Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;

.field private mService:Lcom/oppo/translate/IOppoTranslateService;

.field private final mSettings:Lcom/oppo/translate/OppoTranslateSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/translate/OppoTranslateManagerService;->sInstance:Lcom/oppo/translate/OppoTranslateManagerService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-direct {p0}, Lcom/oppo/translate/IOppoTranslateManager$Stub;-><init>()V

    .line 68
    iput-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    .line 69
    iput-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    .line 70
    iput-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    .line 73
    new-instance v2, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;

    invoke-direct {v2, p0, v6}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;-><init>(Lcom/oppo/translate/OppoTranslateManagerService;Lcom/oppo/translate/OppoTranslateManagerService$1;)V

    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mMyPackageMonitor:Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;

    .line 85
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 93
    new-instance v2, Lcom/oppo/translate/OppoTranslateSettings;

    invoke-direct {v2, v1}, Lcom/oppo/translate/OppoTranslateSettings;-><init>(I)V

    iput-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    .line 94
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/oppo/translate/OppoTranslateManagerService;->buildEngineListLocked(Ljava/util/List;)V

    .line 95
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z

    .line 96
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mMyPackageMonitor:Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;

    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/oppo/translate/OppoTranslateManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 97
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "OppoTranslateManagerService"

    const-string v3, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v2, v3, v0}, Lcom/color/util/ColorLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/oppo/translate/OppoTranslateManagerService;)Lcom/oppo/translate/OppoTranslateSettings;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/translate/OppoTranslateManagerService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/translate/OppoTranslateManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/translate/OppoTranslateManagerService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/translate/OppoTranslateManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/translate/OppoTranslateManagerService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->chooseNewDefaultEngineLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/translate/OppoTranslateManagerService;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/translate/OppoTranslateManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/oppo/translate/OppoTranslateManagerService;->setEngineEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/translate/OppoTranslateManagerService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/translate/OppoTranslateManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/translate/OppoTranslateManagerService;->buildEngineListLocked(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/translate/OppoTranslateManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/translate/OppoTranslateManagerService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method private bindCurrentTranslateService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 342
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 343
    :cond_0
    const-string v0, "OppoTranslateManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v2}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method private buildEngineListLocked(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/translate/OppoTranslateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/translate/OppoTranslateInfo;>;"
    const/4 v5, 0x0

    const-string v6, "OppoTranslateManagerService"

    const-string v7, "--- re-buildInputMethodList"

    invoke-static {v5, v6, v7}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 330
    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 331
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.oppo.intent.action.TRANSLATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v6, 0x8080

    iget-object v7, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v7}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 335
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 336
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v4, Lcom/oppo/translate/OppoTranslateInfo;

    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/oppo/translate/OppoTranslateInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 337
    .local v4, "ti":Lcom/oppo/translate/OppoTranslateInfo;
    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ti":Lcom/oppo/translate/OppoTranslateInfo;
    :cond_0
    return-void
.end method

.method private calledFromValidUser()Z
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 279
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 280
    .local v1, "userId":I
    const-string v4, "OppoTranslateManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- calledFromForegroundUserOrSystemProcess ? calling uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " system uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " calling userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", foreground user id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v6}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", calling pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/oppo/translate/OppoTranslateUtils;->getApiCallStack()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eq v0, v7, :cond_0

    iget-object v4, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v4}, Lcom/oppo/translate/OppoTranslateSettings;->getCurrentUserId()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v2

    .line 294
    :cond_1
    iget-object v4, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 297
    const-string v4, "OppoTranslateManagerService"

    const-string v5, "--- Access granted because the calling process has the INTERACT_ACROSS_USERS_FULL permission"

    invoke-static {v3, v4, v5}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_2
    const-string v2, "OppoTranslateManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- IPC called from background users. Ignore. \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/oppo/translate/OppoTranslateUtils;->getStackTrace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/color/util/ColorLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 303
    goto :goto_0
.end method

.method private chooseNewDefaultEngineLocked()Z
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/translate/OppoTranslateInfo;

    invoke-virtual {v0}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oppo/translate/OppoTranslateSettings;->setSelectedEngine(Ljava/lang/String;)V

    .line 354
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, "defComp":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/translate/OppoTranslateInfo;

    .line 309
    .local v4, "ti":Lcom/oppo/translate/OppoTranslateInfo;
    invoke-virtual {v4}, Lcom/oppo/translate/OppoTranslateInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 310
    .local v0, "compName":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v5}, Lcom/oppo/translate/OppoTranslateSettings;->getSelectedEngine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    move-object v1, v0

    .line 315
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v4    # "ti":Lcom/oppo/translate/OppoTranslateInfo;
    :cond_1
    const-string v5, "OppoTranslateManagerService"

    const-string v6, "============================================="

    invoke-static {v8, v5, v6}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.oppo.intent.action.TRANSLATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 318
    const-string v5, "OppoTranslateManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defComp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 322
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 321
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v5, "OppoTranslateManagerService"

    const-string v6, "defComp=null"

    invoke-static {v8, v5, v6}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oppo/translate/OppoTranslateManagerService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-object v0, Lcom/oppo/translate/OppoTranslateManagerService;->sInstance:Lcom/oppo/translate/OppoTranslateManagerService;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/oppo/translate/OppoTranslateManagerService;

    invoke-direct {v0, p0}, Lcom/oppo/translate/OppoTranslateManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/translate/OppoTranslateManagerService;->sInstance:Lcom/oppo/translate/OppoTranslateManagerService;

    .line 106
    :cond_0
    sget-object v0, Lcom/oppo/translate/OppoTranslateManagerService;->sInstance:Lcom/oppo/translate/OppoTranslateManagerService;

    return-object v0
.end method

.method private notifyServiceConnection(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

    invoke-interface {v1, p1}, Lcom/oppo/translate/IOppoTranslateServiceListener;->onServiceConnected(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onServiceConnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : onServiceConnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEngineEnabledLocked(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 359
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    .locals 5
    .param p1, "savedInstanceState"    # Lcom/oppo/translate/OppoTranslateState;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateAskListener;
    .param p3, "prompt"    # Z

    .prologue
    const/4 v4, 0x0

    .line 189
    const-string v1, "OppoTranslateManagerService"

    const-string v2, "ask"

    invoke-static {v4, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1, p2, p3}, Lcom/oppo/translate/IOppoTranslateService;->ask(Lcom/oppo/translate/OppoTranslateState;Lcom/oppo/translate/IOppoTranslateAskListener;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateResultListener;

    .prologue
    const/4 v4, 0x0

    .line 217
    const-string v1, "OppoTranslateManagerService"

    const-string v2, "dict"

    invoke-static {v4, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1, p2}, Lcom/oppo/translate/IOppoTranslateService;->dict(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : dict"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : dict"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public getEngineList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/translate/OppoTranslateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    monitor-enter v1

    .line 160
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectedEngine()Lcom/oppo/translate/OppoTranslateInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 176
    :goto_0
    return-object v1

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    monitor-enter v3

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mEngineList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/translate/OppoTranslateInfo;

    .line 171
    .local v1, "ti":Lcom/oppo/translate/OppoTranslateInfo;
    iget-object v4, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v4}, Lcom/oppo/translate/OppoTranslateSettings;->getSelectedEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/oppo/translate/OppoTranslateInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    monitor-exit v3

    goto :goto_0

    .line 175
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ti":Lcom/oppo/translate/OppoTranslateInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 176
    goto :goto_0
.end method

.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 245
    const-string v2, "OppoTranslateManagerService"

    const-string v3, "getUri"

    invoke-static {v5, v2, v3}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v2, p1}, Lcom/oppo/translate/IOppoTranslateService;->getUri(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "OppoTranslateManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : getUri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, v5}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "OppoTranslateManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : getUri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, v5}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 114
    const/4 v0, 0x0

    const-string v1, "OppoTranslateManagerService"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p2}, Lcom/oppo/translate/IOppoTranslateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/translate/IOppoTranslateService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    .line 116
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 123
    const/4 v0, 0x0

    const-string v1, "OppoTranslateManagerService"

    const-string/jumbo v2, "onServiceDisconnected"

    invoke-static {v0, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    .line 125
    return-void
.end method

.method public pronounce(Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 231
    const-string v1, "OppoTranslateManagerService"

    const-string/jumbo v2, "pronounce"

    invoke-static {v4, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1}, Lcom/oppo/translate/IOppoTranslateService;->pronounce(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : pronounce"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : pronounce"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public setSelectedEngine(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mSettings:Lcom/oppo/translate/OppoTranslateSettings;

    invoke-virtual {v0, p1}, Lcom/oppo/translate/OppoTranslateSettings;->setSelectedEngine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(Lcom/oppo/translate/IOppoTranslateServiceListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/oppo/translate/IOppoTranslateServiceListener;

    .prologue
    const/4 v4, 0x0

    .line 129
    iput-object p1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mListener:Lcom/oppo/translate/IOppoTranslateServiceListener;

    .line 130
    invoke-direct {p0}, Lcom/oppo/translate/OppoTranslateManagerService;->createIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p0, v2}, Lcom/oppo/translate/OppoTranslateManagerService;->bindCurrentTranslateService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 131
    .local v0, "result":Z
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start : bindService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public stop(Lcom/oppo/translate/OppoTranslateState;)V
    .locals 5
    .param p1, "outState"    # Lcom/oppo/translate/OppoTranslateState;

    .prologue
    const/4 v4, 0x0

    .line 139
    const-string v1, "OppoTranslateManagerService"

    const-string/jumbo v2, "stop"

    invoke-static {v4, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1}, Lcom/oppo/translate/IOppoTranslateService;->stop(Lcom/oppo/translate/OppoTranslateState;)V

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oppo/translate/OppoTranslateState;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 151
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method

.method public translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oppo/translate/IOppoTranslateResultListener;

    .prologue
    const/4 v4, 0x0

    .line 203
    const-string v1, "OppoTranslateManagerService"

    const-string/jumbo v2, "translate"

    invoke-static {v4, v1, v2}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/oppo/translate/OppoTranslateManagerService;->mService:Lcom/oppo/translate/IOppoTranslateService;

    invoke-interface {v1, p1, p2}, Lcom/oppo/translate/IOppoTranslateService;->translate(Ljava/lang/String;Lcom/oppo/translate/IOppoTranslateResultListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : translate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OppoTranslateManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : translate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/util/ColorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v4}, Lcom/oppo/translate/OppoTranslateManagerService;->notifyServiceConnection(Z)V

    goto :goto_0
.end method
