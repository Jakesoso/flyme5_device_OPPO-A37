.class public Lcom/android/internal/content/CompatibilityWhiteList;
.super Ljava/lang/Object;
.source "CompatibilityWhiteList.java"


# static fields
.field public static final BROADCAST_ACTION_ROM_UPDATE_CONFIG_SUCCES:Ljava/lang/String; = "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final FILE_DIR:Ljava/lang/String; = "/data/system/OppoWL"

.field public static final FILTER_NAME:Ljava/lang/String; = "compatibility_whitelist_values"

.field public static final FORCE_CHOOSING_OLD_WEBVIEW_MTK:I = 0x11

.field public static final FORCE_CHOOSING_WEBVIEW:I = 0xb

.field public static final FORCE_DELAY_DEXOPT:I = 0x12

.field public static final FORCE_DISABLE_HARDWAREACCELERATE:I = 0xf

.field public static final FORCE_DISABLE_HARDWAREACCELERATE_MTK:I = 0x10

.field public static final FORCE_DISABLE_HYPNUS:I = 0x14

.field public static final FORCE_ENABLE_HARDWAREACCELERATE:I = 0xe

.field public static final FORCE_FILTER_EXPLICIT_SERVICEINTENTCHECK:I = 0x3

.field public static final FORCE_FILTER_HASKEY_CALL:I = 0x2

.field public static final FORCE_FILTER_INVALID_WIN_TYPE:I = 0x9

.field public static final FORCE_FILTER_MESSAGE:I = 0x7

.field public static final FORCE_FILTER_SERIALIZABLE_IMPLEMENT:I = 0x4

.field public static final FORCE_FILTER_UNBIND_SERVICE:I = 0x5

.field public static final FORCE_FILTER_WALLPAPER:I = 0xa

.field public static final FORCE_IGNORE_DEXOPT:I = 0x8

.field public static final FORCE_IGNORE_GSF:I = 0x6

.field public static final FORCE_IN_SAFEMODE_DEX:I = 0xc

.field public static final FORCE_IN_SAFEMODE_DEX_MTK:I = 0xd

.field public static final FORCE_RUNNING_IN_32_BIT:I = 0x0

.field public static final FORCE_RUNNING_IN_64_BIT:I = 0x1

.field private static final LENGTH_OF_WHITELIST:I = 0x15

.field public static final NOT_CHANGE_ABI:I = -0x1

.field public static final ROM_UPDATE_CONFIG_LIST:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final SYS_FILE_DIR:Ljava/lang/String; = "system/etc/oppo_comp_whitelist.txt"

.field private static final TAG:Ljava/lang/String; = "CompatibilityWhiteList"

.field public static bootFromOTA:Z

.field private static delayDexoptCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceFilter_HasKeyApiCall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceFilter_Invalid_WinType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceFilter_Message_StateException:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceFilter_Serializable_Implement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceFilter_Unbind_Service:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceFilter_WallPaper:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceIgnore_Dexopt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceIgnore_gsf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceRunningIn_32Bit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceRunningIn_64Bit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x13

    const/16 v6, 0x9

    const/4 v5, 0x3

    .line 56
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sDefaultWhiteList:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_64Bit:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_HasKeyApiCall:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Serializable_Implement:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Unbind_Service:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceIgnore_gsf:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Message_StateException:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceIgnore_Dexopt:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Invalid_WinType:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_WallPaper:Ljava/util/List;

    .line 133
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.jinaiwang.jinai"

    const/16 v3, 0x14

    const-string v4, "1.1.8"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.lectek.android.dbs.tuodiaogaogenxiehuochunvrendejingcai"

    const/16 v3, 0x11

    const-string v4, "0.8.7"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.citic.android.reader.cmssj"

    const/16 v3, 0xd

    const-string v4, "0.8.3"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.lectek.android.dbs.shileyuan"

    const/16 v3, 0xe

    const-string v4, "0.8.4"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.lectek.android.dbs.zheibeizininenghuodegenghaobei400wanrenyanzhenghedizhangkongnideqianyishi"

    const/16 v3, 0x11

    const-string v4, "0.8.7"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.wondertek.cj_yun"

    const/16 v3, 0x7a

    const-string v4, "1.2.2"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.rock.lockscreenone"

    const/16 v3, 0x23

    const-string v4, "3.5"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.ci123.cidroid"

    const/16 v3, 0x8

    const-string v4, "2.0"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.xs.cn.reader"

    const-string v3, "1.0.0"

    invoke-direct {v1, v2, v9, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.feidou.flydoubaike"

    const/16 v3, 0x15

    const-string v4, "1.21"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.culiu.tenqiushi"

    const/16 v3, 0x21

    const-string v4, "2.5.0"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.jk37du.NeiHanShiPin"

    const-string v3, "1.1.12"

    invoke-direct {v1, v2, v6, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string/jumbo v2, "sk.halmi.plumber"

    const-string v3, "2.0"

    invoke-direct {v1, v2, v6, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.iqinbao.android.songsfifty"

    const-string v3, "1.2.5"

    invoke-direct {v1, v2, v7, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.csii.fd"

    const/4 v3, 0x2

    const-string v4, "2.3"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.hasbro.FurbyBoom.installhelper"

    const/4 v3, 0x4

    const-string v4, "1.2"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_64Bit:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.ttstudio.netspeedup"

    const/16 v3, 0x2d

    const-string v4, "1.4.9.11"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_HasKeyApiCall:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.share.ibaby"

    const-string v3, "2.2.0"

    invoke-direct {v1, v2, v6, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "cn.catt.service"

    const/4 v3, 0x6

    const-string v4, "1.6"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "cn.catt.healthmanager.xmpp.NotificationService"

    const/4 v3, 0x6

    const-string v4, "1.6"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.androidpn.NotificationService"

    const/16 v3, 0xf

    const-string v4, "1.92"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.baidu.android.pushservice.action.PUSH_SERVICE"

    const/16 v3, 0x1f

    const-string v4, "5.3.1"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.BeeFramework.NetworkStateService"

    const-string v3, "1.0.0"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.wasu.ptyw.service.MagicService"

    const/16 v3, 0xd

    const-string v4, "1.0.8"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.linsen.theday.ACTION_UPDATE"

    const-string v3, "3.0"

    invoke-direct {v1, v2, v6, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.letoke.service.LoadingPicService"

    const/16 v3, 0x15

    const-string v4, "3.0.9"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.android.vending.licensing.ILicensingService"

    const/16 v3, 0x7d8

    const-string v4, "16.0.4201.1008"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.zplay.popstar.zw.oppo.purchaseservice.BIND"

    const-string/jumbo v3, "none"

    invoke-direct {v1, v2, v8, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.hp.marykay.utils.imagehandle.IBitmapService"

    const-string v3, "3.2.0"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Serializable_Implement:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.hudong.androidbaike.model.ArticleId"

    const-string v3, "2.2.1"

    invoke-direct {v1, v2, v7, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Serializable_Implement:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.hudong.androidbaike.model.Article"

    const-string v3, "2.2.1"

    invoke-direct {v1, v2, v7, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Unbind_Service:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.ea.nimble.mtx.googleplay.util.IabHelper"

    const/16 v3, 0x20

    const-string v4, "1.4.827770"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Unbind_Service:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "BillingUtils.IabHelper"

    const/16 v3, 0x31

    const-string v4, "4.8"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Unbind_Service:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.thevoxelagents.billing.IabHelper"

    const/16 v3, 0x43

    const-string v4, "1.19"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Message_StateException:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.xunniu.ybk"

    const-string v3, "1.3.0"

    invoke-direct {v1, v2, v8, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceIgnore_Dexopt:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.sinyuee.SGRunningMan"

    const-string v3, "1.0"

    invoke-direct {v1, v2, v9, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Invalid_WinType:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.mastobaev.unity.smaato.MastSmaatoExtentionUnityActivity"

    const v3, 0xebf9

    const-string v4, "5.6.4"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_WallPaper:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.wpzp.yiliannvsheng360"

    const-string v3, "1.2"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_WallPaper:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.wpzp.geguofengjing360"

    const-string v3, "1.2"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_WallPaper:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.wpzp.heisefezhuliu360"

    const-string v3, "1.2"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_WallPaper:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.wpzp.katongavli360"

    const-string v3, "1.2"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_WallPaper:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.wpzp.aiqinglangman360"

    const-string v3, "1.2"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_WallPaper:Ljava/util/List;

    new-instance v1, Lcom/android/internal/content/PackageInfo;

    const-string v2, "com.beike.baihuazhenyanspk"

    const-string v3, "1.2"

    invoke-direct {v1, v2, v5, v3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/content/CompatibilityWhiteList;->bootFromOTA:Z

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->delayDexoptCache:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callFromPackage([Ljava/lang/StackTraceElement;Ljava/lang/String;)Z
    .locals 4
    .param p0, "stackTraces"    # [Ljava/lang/StackTraceElement;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 525
    if-nez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v2

    .line 528
    :cond_1
    if-eqz p0, :cond_0

    .line 531
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 532
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    const/4 v2, 0x1

    goto :goto_0

    .line 531
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static doHypnus(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/16 v2, 0x14

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "disable":Z
    if-nez p0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 545
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 548
    :cond_1
    const-string v1, "CompatibilityWhiteList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do Hypnus, disable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {v0}, Lcom/android/internal/content/CompatibilityWhiteList;->enableDisableHypnus(Z)V

    goto :goto_0
.end method

.method public static dump(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 428
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 429
    .local v2, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 430
    const-string v4, "CompatibilityWhiteList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " veritify String = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "m":I
    .end local v2    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public static dumpToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez p0, :cond_0

    const-string v4, "error in dump"

    .line 444
    :goto_0
    return-object v4

    .line 437
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 439
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 440
    .local v3, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " veritify String = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 438
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    .end local v0    # "m":I
    .end local v3    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static enableDisableHypnus(Z)V
    .locals 2
    .param p0, "disable"    # Z

    .prologue
    .line 553
    if-eqz p0, :cond_0

    .line 554
    const-string/jumbo v0, "sys.enable.hypnus"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    const-string/jumbo v0, "sys.enable.hypnus"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static extraServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fullName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 457
    if-nez p0, :cond_0

    const-string v2, ""

    .line 463
    :goto_0
    return-object v2

    .line 458
    :cond_0
    const-string v2, "\\$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "temp":[Ljava/lang/String;
    aget-object v2, v0, v4

    if-eqz v2, :cond_1

    .line 460
    aget-object v2, v0, v4

    const-string v3, "\\@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "temp2":[Ljava/lang/String;
    aget-object v2, v1, v4

    goto :goto_0

    .line 463
    .end local v1    # "temp2":[Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method private static getDataFromProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "pmsContext"    # Landroid/content/Context;

    .prologue
    .line 339
    const/4 v7, 0x0

    .line 340
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 341
    .local v6, "configVersion":I
    const/4 v9, 0x0

    .line 342
    .local v9, "returnStr":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "version"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "xml"

    aput-object v1, v2, v0

    .line 344
    .local v2, "projection":[Ljava/lang/String;
    if-nez p0, :cond_1

    .line 358
    if-eqz v7, :cond_0

    .line 359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    const/4 v7, 0x0

    :cond_0
    move-object v10, v9

    .line 363
    .end local v9    # "returnStr":Ljava/lang/String;
    .local v10, "returnStr":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 345
    .end local v10    # "returnStr":Ljava/lang/String;
    .restart local v9    # "returnStr":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/content/CompatibilityWhiteList;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    const-string v3, "filtername=\"compatibility_whitelist_values\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 347
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 348
    const-string/jumbo v0, "version"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 349
    .local v11, "versioncolumnIndex":I
    const-string/jumbo v0, "xml"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 350
    .local v12, "xmlcolumnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 351
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 352
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 353
    const-string v0, "CompatibilityWhiteList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "White List updated, version = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    .end local v11    # "versioncolumnIndex":I
    .end local v12    # "xmlcolumnIndex":I
    :cond_2
    if-eqz v7, :cond_3

    .line 359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    const/4 v7, 0x0

    :cond_3
    :goto_1
    move-object v10, v9

    .line 363
    .end local v9    # "returnStr":Ljava/lang/String;
    .restart local v10    # "returnStr":Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v10    # "returnStr":Ljava/lang/String;
    .restart local v9    # "returnStr":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 356
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CompatibilityWhiteList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can not get white list data from provider, because of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    if-eqz v7, :cond_3

    .line 359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    const/4 v7, 0x0

    goto :goto_1

    .line 358
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method public static getOneWhileList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "whiteListType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 315
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getWhiteList(I)Ljava/util/List;
    .locals 1
    .param p0, "whiteListType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    packed-switch p0, :pswitch_data_0

    .line 514
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sDefaultWhiteList:Ljava/util/List;

    .line 517
    .local v0, "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :goto_0
    return-object v0

    .line 470
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_0
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_32Bit:Ljava/util/List;

    .line 471
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 474
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_1
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceRunningIn_64Bit:Ljava/util/List;

    .line 475
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 478
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_2
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_HasKeyApiCall:Ljava/util/List;

    .line 479
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 482
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_3
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Explicit_ServiceIntentCheck:Ljava/util/List;

    .line 483
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 486
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_4
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Serializable_Implement:Ljava/util/List;

    .line 487
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 490
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_5
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Unbind_Service:Ljava/util/List;

    .line 491
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 494
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_6
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceIgnore_gsf:Ljava/util/List;

    .line 495
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 498
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_7
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Message_StateException:Ljava/util/List;

    .line 499
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 502
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_8
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceIgnore_Dexopt:Ljava/util/List;

    .line 503
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 506
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_9
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_Invalid_WinType:Ljava/util/List;

    .line 507
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 510
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    :pswitch_a
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sForceFilter_WallPaper:Ljava/util/List;

    .line 511
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/PackageInfo;>;"
    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getWhiteListFromXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 367
    if-nez p0, :cond_0

    const/4 v9, 0x0

    .line 410
    :goto_0
    return-object v9

    .line 368
    :cond_0
    const/4 v8, 0x0

    .line 369
    .local v8, "xmlReader":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 370
    .local v4, "strReader":Ljava/io/StringReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 373
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .end local v4    # "strReader":Ljava/io/StringReader;
    .local v5, "strReader":Ljava/io/StringReader;
    :try_start_1
    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 375
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 376
    .local v1, "eventType":I
    :goto_1
    if-eq v1, v11, :cond_4

    .line 377
    packed-switch v1, :pswitch_data_0

    .line 392
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 381
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 382
    .local v6, "tmp":[C
    array-length v9, v6

    if-lt v9, v11, :cond_1

    array-length v9, v6

    const/4 v10, 0x2

    if-gt v9, v10, :cond_1

    .line 383
    const/4 v9, 0x0

    aget-char v9, v6, v9

    add-int/lit8 v7, v9, -0x61

    .line 384
    .local v7, "type":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 385
    if-ltz v7, :cond_1

    const/16 v9, 0x15

    if-ge v7, v9, :cond_1

    .line 386
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 394
    .end local v1    # "eventType":I
    .end local v6    # "tmp":[C
    .end local v7    # "type":I
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 395
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "strReader":Ljava/io/StringReader;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    :goto_3
    :try_start_2
    const-string v9, "CompatibilityWhiteList"

    const-string v10, "Got execption parsing permissions."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    if-eqz v8, :cond_2

    .line 401
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 403
    :cond_2
    if-eqz v4, :cond_3

    .line 404
    invoke-virtual {v4}, Ljava/io/StringReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 410
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 400
    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "strReader":Ljava/io/StringReader;
    :cond_4
    if-eqz v8, :cond_5

    .line 401
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 403
    :cond_5
    if-eqz v5, :cond_6

    .line 404
    invoke-virtual {v5}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    move-object v4, v5

    .line 408
    .end local v5    # "strReader":Ljava/io/StringReader;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    goto :goto_4

    .line 406
    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v5    # "strReader":Ljava/io/StringReader;
    :catch_1
    move-exception v0

    .line 407
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "CompatibilityWhiteList"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 409
    .end local v5    # "strReader":Ljava/io/StringReader;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    goto :goto_4

    .line 406
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 407
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "CompatibilityWhiteList"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 397
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v9, "CompatibilityWhiteList"

    const-string v10, "Got execption parsing permissions."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 400
    if-eqz v8, :cond_7

    .line 401
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 403
    :cond_7
    if-eqz v4, :cond_3

    .line 404
    invoke-virtual {v4}, Ljava/io/StringReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 406
    :catch_4
    move-exception v0

    .line 407
    const-string v9, "CompatibilityWhiteList"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 400
    :goto_6
    if-eqz v8, :cond_8

    .line 401
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    .line 403
    :cond_8
    if-eqz v4, :cond_9

    .line 404
    invoke-virtual {v4}, Ljava/io/StringReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 408
    :cond_9
    :goto_7
    throw v9

    .line 406
    :catch_5
    move-exception v0

    .line 407
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "CompatibilityWhiteList"

    const-string v11, "Got execption close permReader."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "strReader":Ljava/io/StringReader;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "strReader":Ljava/io/StringReader;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    goto :goto_6

    .line 396
    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v5    # "strReader":Ljava/io/StringReader;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5    # "strReader":Ljava/io/StringReader;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    goto :goto_5

    .line 394
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v0

    goto :goto_3

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getWhiteListUpdateFromProvider(Ljava/util/ArrayList;Landroid/content/Context;)Z
    .locals 4
    .param p1, "pmsContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 320
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/content/CompatibilityWhiteList;->getDataFromProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/content/CompatibilityWhiteList;->getWhiteListFromXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/content/CompatibilityWhiteList;->saveToFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {v1}, Lcom/android/internal/content/CompatibilityWhiteList;->readFromFile(Ljava/util/ArrayList;)Z

    .line 323
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 324
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 326
    invoke-static {p0}, Lcom/android/internal/content/CompatibilityWhiteList;->doHypnus(Ljava/util/ArrayList;)V

    .line 327
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    const/4 v1, 0x0

    .line 329
    const/4 v2, 0x1

    .line 334
    .end local v1    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    return v2

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/CompatibilityWhiteList;->readFromFile(Ljava/util/ArrayList;)Z

    move-result v1

    .line 208
    .local v1, "result":Z
    invoke-static {p0}, Lcom/android/internal/content/CompatibilityWhiteList;->doHypnus(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isContained(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p1, "vertfStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x1

    .line 308
    :goto_1
    return v1

    .line 303
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isInWhiteList(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p0, "whiteListType"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 450
    invoke-static {p1}, Lcom/android/internal/content/CompatibilityWhiteList;->extraServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 452
    :cond_0
    new-instance v0, Lcom/android/internal/content/PackageInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/content/PackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    .local v0, "packageInfo":Lcom/android/internal/content/PackageInfo;
    invoke-static {p0}, Lcom/android/internal/content/CompatibilityWhiteList;->getWhiteList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isInWhiteListFromFile(Ljava/util/ArrayList;ILjava/lang/String;)Z
    .locals 4
    .param p1, "whiteListType"    # I
    .param p2, "vertfStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 274
    if-nez p2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 277
    invoke-static {p2}, Lcom/android/internal/content/CompatibilityWhiteList;->extraServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 280
    :cond_2
    if-ltz p1, :cond_0

    const/16 v1, 0x15

    if-ge p1, v1, :cond_0

    .line 282
    const/16 v1, 0x12

    if-ne p1, v1, :cond_3

    .line 283
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1, p2}, Lcom/android/internal/content/CompatibilityWhiteList;->isContained(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    .line 285
    .local v0, "result":Z
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/internal/content/CompatibilityWhiteList;->bootFromOTA:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/content/CompatibilityWhiteList;->delayDexoptCache:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    sget-object v1, Lcom/android/internal/content/CompatibilityWhiteList;->delayDexoptCache:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    .end local v0    # "result":Z
    :cond_3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 294
    .restart local v0    # "result":Z
    if-eqz v0, :cond_0

    .line 295
    const-string v1, "CompatibilityWhiteList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in white list, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start to use compatibility plan."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readFromFile(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 217
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 218
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v9, 0x15

    if-ge v4, v9, :cond_0

    .line 219
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    :cond_0
    const/4 v3, 0x0

    .line 222
    .local v3, "fromSystem":Z
    const-string v9, "/data/system/OppoWL"

    if-eqz v9, :cond_1

    const-string/jumbo v9, "system/etc/oppo_comp_whitelist.txt"

    if-nez v9, :cond_2

    .line 259
    :cond_1
    :goto_1
    return v8

    .line 223
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/system/OppoWL"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 225
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string/jumbo v9, "system/etc/oppo_comp_whitelist.txt"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 227
    const/4 v3, 0x1

    .line 229
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 233
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 234
    .local v6, "instream":Ljava/io/InputStream;
    if-eqz v6, :cond_1

    .line 246
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 247
    .local v5, "inputreader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 249
    .local v0, "buffreader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 250
    invoke-static {v7, p0}, Lcom/android/internal/content/CompatibilityWhiteList;->resolveLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 253
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "CompatibilityWhiteList"

    const-string v9, "File doesn\'t not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v8, 0x1

    goto :goto_1

    .line 252
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v6    # "instream":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 255
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 256
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "CompatibilityWhiteList"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static resolveLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "lineOfContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "tmp":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    .local v0, "i":I
    if-ltz v0, :cond_0

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    .line 267
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 268
    .local v2, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static saveToFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 415
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/OppoWL"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 417
    .local v2, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 418
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    const/4 v3, 0x1

    .line 423
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    const/4 v3, 0x0

    goto :goto_0
.end method
