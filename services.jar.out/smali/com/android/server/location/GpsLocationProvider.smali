.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$GpsController;,
        Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    }
.end annotation


# static fields
.field private static final ACTION_MTKLOGGER_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static DEBUG:Z = false

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INDOOR_MODE_DISABLE_ACTION:Ljava/lang/String; = "android.intent.action.GPS_INDOOR_MODE_DISABLE"

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_GNSS_SVS:I = 0x100

.field private static final MAX_SVS:I = 0x20

.field private static final MTKLOGGER_MOBILELOG_DEBUG_PROPERTY:Ljava/lang/String; = "debug.MB.running"

.field private static final NO_FAKE_PACKAGE_NAMES:[Ljava/lang/String;

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static mNetworkConnected:Z

.field private static mNetworkLocationRequestPending:Z

.field private static mNetworkLocationStarted:Z

.field private static mNetworkProviderEnabled:Z


# instance fields
.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mApnIpType:I

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDisableGpsIndoorMode:Z

.field private mDownloadXtraDataPending:I

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mGnssSnrs:[F

.field private mGnssSvAlmanac:[Z

.field private mGnssSvAzimuths:[F

.field private mGnssSvElevations:[F

.field private mGnssSvEphemeris:[Z

.field private mGnssSvInFix:[Z

.field private mGnssSvs:[I

.field private mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private final mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private final mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mGpsTimeSyncFlag:Z

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mIsEmergencyCallDialed:Z

.field private mIsFakeReport:Z

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLock:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mSpeed:F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private routeNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 132
    const-string v0, "GpsLocationProvider"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    .line 133
    const-string v0, "GpsLocationProvider"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    .line 135
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 2565
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    .line 3104
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationStarted:Z

    .line 3106
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mNetworkConnected:Z

    .line 3107
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationRequestPending:Z

    .line 3192
    new-array v0, v10, [Ljava/lang/String;

    const-string v2, "com.sdu.didi"

    aput-object v2, v0, v3

    const-string v2, "com.ubercab"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->NO_FAKE_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20

    const/4 v4, 0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSpeed:F

    .line 281
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGpsIndoorMode:Z

    .line 294
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    .line 296
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 299
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 336
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 337
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 349
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 366
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 373
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 375
    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 377
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    .line 382
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 385
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    .line 390
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 437
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 443
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsTimeSyncFlag:Z

    .line 449
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 477
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 556
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1373
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$10;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$10;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    .line 2075
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$11;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$11;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2471
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    .line 2546
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 2547
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 2548
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 2549
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 2550
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 2554
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvs:[I

    .line 2555
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    .line 2556
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvElevations:[F

    .line 2557
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAzimuths:[F

    .line 2558
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvEphemeris:[Z

    .line 2559
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAlmanac:[Z

    .line 2560
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    .line 2563
    const/16 v0, 0x78

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 3157
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$12;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$12;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationListener:Landroid/location/LocationListener;

    .line 3191
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mIsFakeReport:Z

    .line 707
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 708
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 709
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 711
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 714
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 715
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GpsLocationProvider"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 716
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 719
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 720
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 722
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 725
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 729
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 733
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 734
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 737
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 748
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 752
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    .line 753
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->listenForBroadcasts()V

    .line 756
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 779
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$5;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    .line 791
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$6;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$6;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 813
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$7;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$7;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 836
    const-string v0, "debug.MB.running"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_set_log_level(I)V

    .line 838
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 124
    sput-boolean p0, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 124
    sput-boolean p0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_set_log_level(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGpsIndoorMode:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$GpsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;JJI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 124
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$3000(IDDDIIII)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # I
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I

    .prologue
    .line 124
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GpsLocationProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/NetworkInfo;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/location/GpsLocationProvider;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSpeed:F

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/location/GpsLocationProvider;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/ILocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsFakeReport:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mIsEmergencyCallDialed:Z

    return p1
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1931
    new-instance v2, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1932
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1933
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1934
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1935
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1936
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1938
    :cond_0
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1939
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1941
    :cond_1
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1942
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    .line 1944
    :cond_2
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1945
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    .line 1947
    :cond_3
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1948
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1950
    :cond_4
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 581
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 582
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 583
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 584
    .local v2, "supl_init":[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    .end local v2    # "supl_init":[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->isWapPushLegal(Landroid/content/Intent;)Z

    move-result v0

    .line 591
    .local v0, "ret":Z
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[agps] WARNING: checkWapSuplInit ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    if-nez v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 597
    .local v1, "supl_init":[B
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    goto :goto_0
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1401
    if-nez p1, :cond_1

    .line 1402
    const v0, 0xffff

    .line 1420
    .local v0, "flags":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    .line 1421
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1422
    const/4 v1, 0x1

    .line 1425
    :goto_1
    return v1

    .line 1404
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x0

    .line 1405
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 1406
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1407
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1408
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1409
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1410
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1411
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1412
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1413
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1414
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1415
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1416
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1417
    :cond_d
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 1424
    :cond_e
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAidingData extras:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "flags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 9
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 2335
    if-nez p1, :cond_1

    move v0, v8

    .line 2367
    :cond_0
    :goto_0
    return v0

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    if-eqz v0, :cond_2

    .line 2341
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    goto :goto_0

    .line 2344
    :cond_2
    const-string v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2345
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2347
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "protocol"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2354
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2355
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GpsLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2362
    if-eqz v6, :cond_0

    .line 2363
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2357
    :cond_3
    :try_start_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry found in query for APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2362
    if-eqz v6, :cond_4

    .line 2363
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v8

    .line 2367
    goto :goto_0

    .line 2359
    :catch_0
    move-exception v7

    .line 2360
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2362
    if-eqz v6, :cond_4

    .line 2363
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2362
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2363
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getAutoGpsState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2516
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 2519
    :cond_0
    :goto_0
    return v1

    .line 2518
    :catch_0
    move-exception v0

    .line 2519
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getGeofenceStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1957
    sparse-switch p1, :sswitch_data_0

    .line 1971
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1959
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1961
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 1963
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1965
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1967
    :sswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1969
    :sswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 1957
    nop

    :sswitch_data_0
    .sparse-switch
        -0x95 -> :sswitch_1
        -0x67 -> :sswitch_3
        -0x66 -> :sswitch_5
        -0x65 -> :sswitch_2
        0x0 -> :sswitch_0
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2309
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2310
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2312
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2318
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2319
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2326
    if-eqz v6, :cond_0

    .line 2327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2331
    :cond_0
    :goto_0
    return-object v0

    .line 2321
    :cond_1
    :try_start_1
    const-string v0, "GpsLocationProvider"

    const-string v2, "No APN found to select."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2326
    if-eqz v6, :cond_2

    .line 2327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    .line 2331
    goto :goto_0

    .line 2323
    :catch_0
    move-exception v7

    .line 2324
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "GpsLocationProvider"

    const-string v2, "Error encountered on selecting the APN."

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2326
    if-eqz v6, :cond_2

    .line 2327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2326
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .locals 7
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1106
    if-eqz p2, :cond_1

    .line 1107
    const-string v5, "SUPL_MODE"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1109
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1111
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1117
    :cond_0
    if-eqz p3, :cond_2

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_2

    move v3, v4

    .line 1126
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_1
    :goto_0
    return v3

    .line 1112
    .restart local v1    # "modeString":Ljava/lang/String;
    .restart local v2    # "suplMode":I
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to parse SUPL_MODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1121
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    .line 1123
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private handleDisable()V
    .locals 2

    .prologue
    .line 1168
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_0
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1171
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1172
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1173
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1176
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    .line 1177
    return-void
.end method

.method private handleDownloadXtraData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1017
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-ne v0, v1, :cond_0

    .line 1054
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 1023
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    goto :goto_0

    .line 1026
    :cond_1
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 1029
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1030
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$9;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$9;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleEnable()V
    .locals 4

    .prologue
    .line 1130
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "handleEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    .line 1134
    .local v0, "enabled":Z
    if-eqz v0, :cond_3

    .line 1135
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 1138
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1139
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1141
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1142
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1150
    :cond_2
    :goto_0
    return-void

    .line 1145
    :cond_3
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1146
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1147
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    const-string v1, "GpsLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1147
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleInjectNtpTime()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 959
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 963
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 965
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    goto :goto_0

    .line 968
    :cond_1
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 971
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 972
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$8;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$8;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1215
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1216
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    .line 1217
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1057
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 1061
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 10
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 896
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 898
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 899
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_9

    const-string v0, "available"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    if-eqz p2, :cond_2

    .line 904
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v8

    .line 905
    .local v8, "dataEnabled":Z
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v8, :cond_a

    const/4 v4, 0x1

    .line 907
    .local v4, "networkAvailable":Z
    :goto_2
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->networkLocationHandleByNetworkState(Landroid/net/NetworkInfo;)V

    .line 909
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 910
    .local v6, "defaultApn":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 911
    const-string v6, "dummy-apn"

    .line 914
    :cond_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 919
    .end local v4    # "networkAvailable":Z
    .end local v6    # "defaultApn":Ljava/lang/String;
    .end local v8    # "dataEnabled":Z
    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 921
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_b

    .line 922
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 923
    .local v7, "apnName":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 926
    const-string v7, "dummy-apn"

    .line 928
    :cond_3
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 929
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    .line 930
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    .line 931
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 932
    const-string v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 935
    .local v9, "message":Ljava/lang/String;
    const-string v0, "GpsLocationProvider"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v9    # "message":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 938
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 948
    .end local v7    # "apnName":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_7

    .line 949
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-nez v0, :cond_6

    .line 950
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 952
    :cond_6
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-nez v0, :cond_7

    .line 953
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 956
    :cond_7
    return-void

    .line 896
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 899
    :cond_9
    const-string v0, "unavailable"

    goto/16 :goto_1

    .line 905
    .restart local v8    # "dataEnabled":Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 940
    .end local v8    # "dataEnabled":Z
    :cond_b
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call native_agps_data_conn_failed, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 942
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 944
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_3
.end method

.method private hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 1548
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasIccCard()Z
    .locals 3

    .prologue
    .line 2524
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2526
    .local v0, "tpMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 2527
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 2529
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hibernate()V
    .locals 7

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1541
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1542
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1544
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1545
    return-void
.end method

.method private isAllowedFakeReport(Landroid/os/WorkSource;)Z
    .locals 9
    .param p1, "worksource"    # Landroid/os/WorkSource;

    .prologue
    .line 3195
    sget-boolean v6, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFakeReport worksource:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->NO_FAKE_PACKAGE_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 3197
    .local v5, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 3198
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v4

    .line 3199
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3200
    const/4 v6, 0x0

    .line 3204
    .end local v1    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_2
    return v6

    .line 3197
    .restart local v1    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3196
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3204
    .end local v1    # "i":I
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    goto :goto_2
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 617
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private listenForBroadcasts()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 841
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 842
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 843
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 844
    const-string v2, "localhost"

    const-string v3, "7275"

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 847
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 848
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 850
    :try_start_0
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 856
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 857
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    const-string v2, "android.location.agps.EMERGENCY_CALL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v2, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v2, "android.intent.action.GPS_INDOOR_MODE_DISABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 876
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "GpsLocationProvider"

    const-string v3, "Malformed SUPL init mime type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 689
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 692
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 695
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 702
    const/4 v4, 0x1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return v4

    .line 695
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 698
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open GPS configuration file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v4, 0x0

    goto :goto_0

    .line 695
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "configValues":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 675
    .local v3, "item":Ljava/lang/String;
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GpsParamsResource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 678
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 679
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    :cond_0
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_gnss_sv_status([I[F[F[F[Z[Z[Z)I
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_log_level(I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private networkLocationHandleByNetworkState(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 3109
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3110
    const-string v0, "GpsLocationProvider"

    const-string v1, "network is connected,start location if having pending request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkConnected:Z

    .line 3112
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationRequestPending:Z

    if-eqz v0, :cond_0

    .line 3113
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->networkLocationStart()V

    .line 3119
    :cond_0
    :goto_0
    return-void

    .line 3115
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkConnected:Z

    .line 3116
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationStarted:Z

    if-eqz v0, :cond_0

    .line 3117
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->networkLocationStop()V

    goto :goto_0
.end method

.method private networkLocationStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3121
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mNetworkConnected:Z

    if-nez v1, :cond_0

    .line 3122
    const-string v1, "GpsLocationProvider"

    const-string v2, "network is not connected, pending network request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    :goto_0
    return-void

    .line 3125
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 3127
    .local v0, "mLocationManager":Landroid/location/LocationManager;
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mNetworkProviderEnabled:Z

    .line 3129
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mNetworkProviderEnabled:Z

    if-nez v1, :cond_1

    .line 3130
    const-string v1, "network"

    invoke-virtual {v0, v1, v6}, Landroid/location/LocationManager;->setProviderEnabled(Ljava/lang/String;Z)V

    .line 3131
    const-string v1, "GpsLocationProvider"

    const-string v2, "Enable networklocationprovider temporarily"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :cond_1
    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 3135
    sput-boolean v6, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationStarted:Z

    .line 3136
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationRequestPending:Z

    .line 3138
    const-string v1, "GpsLocationProvider"

    const-string v2, "network location for gps fake location is requested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private networkLocationStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3142
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 3145
    .local v0, "mLocationManager":Landroid/location/LocationManager;
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mNetworkProviderEnabled:Z

    if-nez v1, :cond_0

    .line 3146
    const-string v1, "network"

    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManager;->setProviderEnabled(Ljava/lang/String;Z)V

    .line 3147
    const-string v1, "GpsLocationProvider"

    const-string v2, "restore networklocationprovider to default disabled state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3151
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationStarted:Z

    .line 3152
    sput-boolean v3, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationRequestPending:Z

    .line 3154
    const-string v1, "GpsLocationProvider"

    const-string v2, "network location for gps fake location is stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    return-void
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x1

    .line 621
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset GPS properties, previous size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 623
    const/4 v4, 0x0

    .line 624
    .local v4, "isPropertiesLoadedFromFile":Z
    const-string v9, "ro.hardware.gps"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "gpsHardware":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 626
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/etc/gps."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".conf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v6, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v4

    .line 631
    .end local v6    # "propFilename":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    .line 632
    const-string v9, "/etc/gps.conf"

    invoke-direct {p0, v9, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 634
    :cond_1
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GPS properties reloaded, size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v9, "SUPL_HOST"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "SUPL_PORT"

    invoke-virtual {p2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v9, "C2K_HOST"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 640
    const-string v9, "C2K_PORT"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "portString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v9, :cond_2

    if-eqz v5, :cond_2

    .line 643
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :cond_2
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 652
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    invoke-virtual {p2, v0, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    .line 654
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "final config = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 660
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v10, "SUPL_ES"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, "suplESProperty":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 663
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_4

    :goto_2
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 668
    :cond_3
    :goto_3
    return-void

    .line 644
    .end local v7    # "suplESProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to parse C2K_PORT: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 656
    .local v2, "ex":Ljava/io/IOException;
    const-string v9, "GpsLocationProvider"

    const-string v10, "failed to dump properties contents"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 663
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v7    # "suplESProperty":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 664
    :catch_2
    move-exception v1

    .line 665
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse SUPL_ES: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private reportAGpsStatus(II[B)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1803
    packed-switch p2, :pswitch_data_0

    .line 1867
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Unknown AGPS status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_0
    :goto_0
    return-void

    .line 1805
    :pswitch_0
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_1
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received SUPL IP addr[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1812
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->doStartUsingNetwork()I

    move-result v1

    .line 1816
    .local v1, "result":I
    if-eqz p3, :cond_2

    .line 1818
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1819
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IP address converted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    :cond_2
    :goto_1
    if-nez v1, :cond_5

    .line 1827
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GpsLocationProvider"

    const-string v3, "PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_3
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1829
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    .line 1830
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 1831
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1822
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto :goto_1

    .line 1833
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_4
    const-string v2, "GpsLocationProvider"

    const-string v3, "mAGpsApn not set when receiving PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1835
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_0

    .line 1837
    :cond_5
    if-ne v1, v6, :cond_6

    .line 1838
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GpsLocationProvider"

    const-string v3, "PhoneConstants.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1841
    :cond_6
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature failed, value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_7
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1844
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_0

    .line 1848
    .end local v1    # "result":I
    :pswitch_1
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_8
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v2, :cond_0

    .line 1850
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1852
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1853
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1854
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto/16 :goto_0

    .line 1858
    :pswitch_2
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1861
    :pswitch_3
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1864
    :pswitch_4
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1803
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 2040
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2059
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 2060
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2049
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 2050
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2070
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .locals 17
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_0

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 2012
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v15

    .line 2021
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    .line 2022
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 2023
    const/16 v16, 0x0

    .line 2025
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v3, 0x0

    sget v4, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15, v4}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 2030
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 13
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_0
    move-object v0, p0

    move v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    .line 1985
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v2

    .line 1994
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v6, 0x0

    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v1, p1

    move/from16 v3, p14

    move-wide/from16 v4, p15

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 2001
    return-void
.end method

.method private reportGnssSvStatus()V
    .locals 18

    .prologue
    .line 1703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvEphemeris:[Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAlmanac:[Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/GpsLocationProvider;->native_read_gnss_sv_status([I[F[F[F[Z[Z[Z)I

    move-result v3

    .line 1705
    .local v3, "svCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvs:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvElevations:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvEphemeris:[Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAlmanac:[Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/location/GpsStatusListenerHelper;->onGnssSvStatusChanged(I[I[F[F[F[Z[Z[Z)V

    .line 1715
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1716
    const-string v2, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GNSS SV count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemerisMask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " almanacMask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v3, :cond_3

    .line 1720
    const-string v4, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sv: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvs:[I

    aget v5, v5, v12

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " snr: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    aget v5, v5, v12

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " elev: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvElevations:[F

    aget v5, v5, v12

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " azimuth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAzimuths:[F

    aget v5, v5, v12

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvEphemeris:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_0

    const-string v2, " E"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAlmanac:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_1

    const-string v2, " A"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_2

    const-string v2, " U"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1720
    :cond_0
    const-string v2, " "

    goto :goto_1

    :cond_1
    const-string v2, " "

    goto :goto_2

    :cond_2
    const-string v2, " "

    goto :goto_3

    .line 1729
    .end local v12    # "i":I
    :cond_3
    const/16 v16, 0x0

    .line 1730
    .local v16, "svFixCount":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    .local v11, "arr$":[Z
    array-length v15, v11

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_4
    if-ge v13, v15, :cond_5

    aget-boolean v17, v11, v13

    .line 1731
    .local v17, "value":Z
    if-eqz v17, :cond_4

    .line 1732
    add-int/lit8 v16, v16, 0x1

    .line 1730
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1735
    .end local v17    # "value":Z
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1738
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v2, v4, v6

    if-lez v2, :cond_6

    .line 1741
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v14, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v14, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1744
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1749
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSpeed:F

    .line 1750
    const-wide/16 v4, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_7

    .line 1751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSpeed:F

    .line 1754
    :cond_7
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .locals 12
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1557
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    if-eqz v5, :cond_0

    const-string v5, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportLocation lat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " timestamp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p11

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_0
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "GpsLocationProvider"

    const-string v8, "gps location received, network provider created for fake gps location should stop"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_1
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationRequestPending:Z

    .line 1564
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationStarted:Z

    if-eqz v5, :cond_2

    .line 1565
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->networkLocationStop()V

    .line 1567
    :cond_2
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v8

    .line 1568
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1569
    and-int/lit8 v5, p1, 0x1

    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 1570
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1571
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1572
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1575
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1577
    :cond_3
    and-int/lit8 v5, p1, 0x2

    const/4 v9, 0x2

    if-ne v5, v9, :cond_c

    .line 1578
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 1582
    :goto_0
    and-int/lit8 v5, p1, 0x4

    const/4 v9, 0x4

    if-ne v5, v9, :cond_d

    .line 1583
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1587
    :goto_1
    and-int/lit8 v5, p1, 0x8

    const/16 v9, 0x8

    if-ne v5, v9, :cond_e

    .line 1588
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1592
    :goto_2
    and-int/lit8 v5, p1, 0x10

    const/16 v9, 0x10

    if-ne v5, v9, :cond_f

    .line 1593
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1597
    :goto_3
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v9}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1604
    :goto_4
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1608
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsTimeSyncFlag:Z

    if-eqz v5, :cond_4

    and-int/lit8 v5, p1, 0x1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 1610
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getAutoGpsState()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1611
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsTimeSyncFlag:Z

    .line 1612
    const-string v5, "GpsLocationProvider"

    const-string v8, "GPS time sync is enabled"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string v5, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ########## Auto-sync time with GPS: timestamp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p11

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ########## "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1616
    .local v2, "c":Ljava/util/Calendar;
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1617
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1618
    .local v6, "when":J
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v5, v8, v10

    if-gez v5, :cond_4

    .line 1619
    invoke-static {v6, v7}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1627
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v6    # "when":J
    :cond_4
    :goto_5
    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    if-nez v5, :cond_6

    and-int/lit8 v5, p1, 0x1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_6

    .line 1628
    iget-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1629
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TTFF: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_5
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v5, v8}, Lcom/android/server/location/GpsStatusListenerHelper;->onFirstFix(I)V

    .line 1635
    :cond_6
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v5, :cond_7

    .line 1636
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1639
    :cond_7
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v8, 0x2

    if-eq v5, v8, :cond_9

    .line 1642
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v8, 0xea60

    if-ge v5, v8, :cond_8

    .line 1643
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1647
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1649
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1650
    const/4 v5, 0x2

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v5, v8}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1653
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v8, 0x2710

    if-le v5, v8, :cond_b

    .line 1655
    sget-boolean v5, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "GpsLocationProvider"

    const-string v8, "got fix, hibernating"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_a
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 1658
    :cond_b
    return-void

    .line 1580
    :cond_c
    :try_start_3
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_0

    .line 1604
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1585
    :cond_d
    :try_start_4
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    .line 1590
    :cond_e
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_2

    .line 1595
    :cond_f
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_3

    .line 1601
    :catch_0
    move-exception v3

    .line 1602
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "GpsLocationProvider"

    const-string v9, "RemoteException calling reportLocation"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 1622
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_10
    const-string v5, "GpsLocationProvider"

    const-string v8, "Auto-sync time with GPS is disabled by user settings!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v5, "GpsLocationProvider"

    const-string v8, "GPS time sync is disabled"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private reportMeasurementData(Landroid/location/GpsMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V

    .line 1885
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GpsNavigationMessageEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsNavigationMessageEvent;

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GpsNavigationMessageEvent;)V

    .line 1892
    return-void
.end method

.method private reportNmea(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 1875
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1876
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1877
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1878
    return-void
.end method

.method private reportStatus(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1664
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportStatus status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1667
    .local v1, "wasNavigating":Z
    packed-switch p1, :pswitch_data_0

    .line 1685
    :goto_0
    sget-boolean v2, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wasNavigating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNavigating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v1, v2, :cond_2

    .line 1688
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsStatusListenerHelper;->onGpsEnabledChanged(Z)V

    .line 1689
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged(Z)V

    .line 1690
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged(Z)V

    .line 1693
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1694
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1695
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1697
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 1669
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1670
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1673
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1676
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1679
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 1680
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1760
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v1

    .line 1761
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v6, v6, v12

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v7, v7, v11

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v8, v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII)V

    .line 1771
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_3

    .line 1772
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ephemerisMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " almanacMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_3

    .line 1776
    const-string v2, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sv: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " snr: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    aget v3, v3, v9

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " elev: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " azimuth: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v12

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_0

    const-string v0, "  "

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v11

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    const-string v0, "  "

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v13

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1776
    :cond_0
    const-string v0, " E"

    goto :goto_1

    :cond_1
    const-string v0, " A"

    goto :goto_2

    :cond_2
    const-string v0, "U"

    goto :goto_3

    .line 1787
    .end local v9    # "i":I
    :cond_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v2, v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1789
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne v0, v13, :cond_4

    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1792
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "enabled"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1794
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v10, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1795
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v11, v0}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1797
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x3

    .line 2206
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2208
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 2209
    .local v9, "phoneType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    .line 2210
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2211
    .local v6, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 2214
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2215
    .local v2, "mcc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2216
    .local v3, "mnc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2217
    .local v7, "networkType":I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-eq v7, v0, :cond_0

    const/16 v0, 0xf

    if-ne v7, v0, :cond_2

    .line 2222
    :cond_0
    const/4 v1, 0x2

    .line 2226
    .local v1, "type":I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2234
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "networkType":I
    :cond_1
    :goto_1
    return-void

    .line 2224
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7    # "networkType":I
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_0

    .line 2229
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "networkType":I
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2231
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 2232
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 2165
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2167
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2168
    .local v3, "type":I
    const-string v0, ""

    .line 2170
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2171
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2172
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2190
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2191
    return-void

    .line 2176
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 2177
    const/4 v3, 0x1

    goto :goto_0

    .line 2180
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2181
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2182
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2186
    move-object v0, v1

    .line 2187
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 2198
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2199
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2241
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2242
    return-void
.end method

.method private setEngineCapabilities(I)V
    .locals 5
    .param p1, "capabilities"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1898
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 1900
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 1901
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 1902
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    .line 1905
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    and-int/lit8 v0, p1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1907
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1909
    return-void

    :cond_1
    move v0, v2

    .line 1905
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1907
    goto :goto_1
.end method

.method private setRouting()V
    .locals 4

    .prologue
    .line 2388
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v1, :cond_1

    .line 2403
    :cond_0
    :goto_0
    return-void

    .line 2393
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2398
    .local v0, "result":Z
    if-nez v0, :cond_2

    .line 2399
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2400
    :cond_2
    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2401
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .prologue
    .line 1079
    if-eqz p1, :cond_0

    .line 1080
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1082
    :cond_0
    if-eqz p2, :cond_1

    .line 1084
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    .line 1092
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1094
    :cond_2
    return-void

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startNavigating(Z)V
    .locals 10
    .param p1, "singleShot"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1431
    sput-boolean v8, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationRequestPending:Z

    .line 1432
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationStarted:Z

    if-nez v0, :cond_0

    .line 1433
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->networkLocationStart()V

    .line 1435
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_3

    .line 1436
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating, singleShot is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_1
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1439
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1440
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1441
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1443
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsTimeSyncFlag:Z

    .line 1446
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v6, v8

    .line 1449
    .local v6, "agpsEnabled":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v6, p1}, Lcom/android/server/location/GpsLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1451
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1454
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    packed-switch v0, :pswitch_data_0

    .line 1465
    const-string v7, "unknown"

    .line 1468
    .local v7, "mode":Ljava/lang/String;
    :goto_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting position_mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    .end local v7    # "mode":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1472
    .local v3, "interval":I
    :goto_2
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1474
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1475
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v6, v2

    .line 1446
    goto :goto_0

    .line 1456
    .restart local v6    # "agpsEnabled":Z
    :pswitch_0
    const-string v7, "standalone"

    .line 1457
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1459
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_1
    const-string v7, "MS_ASSISTED"

    .line 1460
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1462
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_2
    const-string v7, "MS_BASED"

    .line 1463
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1471
    .end local v7    # "mode":Ljava/lang/String;
    :cond_5
    const/16 v3, 0x3e8

    goto :goto_2

    .line 1478
    .restart local v3    # "interval":I
    :cond_6
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1479
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1480
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1488
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGpsIndoorMode:Z

    if-nez v0, :cond_a

    .line 1489
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    if-nez v0, :cond_8

    .line 1490
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$GpsController;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    .line 1491
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->setUp()V

    .line 1493
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->startController()V

    .line 1504
    :cond_9
    :goto_4
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1506
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1509
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_3

    .line 1510
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_3

    .line 1495
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    if-eqz v0, :cond_9

    .line 1496
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->tearDown()V

    .line 1497
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopNavigatingNotify()V

    .line 1498
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopController()V

    goto :goto_4

    .line 1454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1518
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_0
    sput-boolean v2, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationRequestPending:Z

    .line 1522
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationStarted:Z

    if-eqz v0, :cond_1

    .line 1523
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->networkLocationStop()V

    .line 1525
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2

    .line 1526
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1527
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1528
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1529
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1530
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1531
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1534
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1536
    :cond_2
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    const-string v2, "GpsLocationProvider"

    const-string v3, "received SIM realted action: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 568
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 570
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM MCC/MNC is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 572
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v2}, Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 573
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 574
    monitor-exit v3

    .line 578
    :goto_0
    return-void

    .line 574
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 576
    :cond_0
    const-string v2, "GpsLocationProvider"

    const-string v3, "SIM MCC/MNC is still not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2371
    const-string v4, "IP"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2384
    :goto_0
    return v1

    .line 2374
    :cond_0
    const-string v4, "IPV6"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 2375
    goto :goto_0

    .line 2377
    :cond_1
    const-string v4, "IPV4V6"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2378
    const/4 v1, 0x3

    goto :goto_0

    .line 2382
    :cond_2
    const-string v4, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2383
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GpsLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 2384
    goto :goto_0
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1305
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 1306
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_1

    .line 1347
    :cond_0
    return-void

    .line 1309
    :cond_1
    const/4 v7, 0x0

    aget-object v5, v0, v7

    .line 1310
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 1313
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_3

    .line 1314
    const/4 v4, -0x1

    .line 1315
    .local v4, "lastuid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1317
    :try_start_0
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1318
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    .line 1320
    if-eq v6, v4, :cond_2

    .line 1321
    move v4, v6

    .line 1322
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    .end local v6    # "uid":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v1

    .line 1325
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1331
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_3
    if-eqz v2, :cond_0

    .line 1332
    const/4 v4, -0x1

    .line 1333
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 1335
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1336
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1338
    if-eq v6, v4, :cond_4

    .line 1339
    move v4, v6

    .line 1340
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1333
    .end local v6    # "uid":I
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1342
    :catch_1
    move-exception v1

    .line 1343
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private updateLowPowerMode()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 602
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "batterySaverGpsMode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "disableGps":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_0

    .line 611
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    .line 612
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    .line 614
    :cond_0
    return-void

    .line 605
    .end local v0    # "disableGps":Z
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    .restart local v0    # "disableGps":Z
    :goto_1
    goto :goto_0

    .line 605
    .end local v0    # "disableGps":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequirements()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1221
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    const/4 v8, 0x0

    .line 1228
    .local v8, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1232
    const/4 v8, 0x1

    .line 1234
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationRequest;

    .line 1235
    .local v7, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 1236
    const/4 v8, 0x0

    goto :goto_1

    .line 1241
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "lr":Landroid/location/LocationRequest;
    :cond_3
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    if-nez v0, :cond_9

    .line 1245
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->isAllowedFakeReport(Landroid/os/WorkSource;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsFakeReport:Z

    .line 1249
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1251
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1254
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 1255
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1260
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1262
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1266
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->resistStartGps()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1274
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    goto/16 :goto_0

    .line 1276
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    if-eqz v0, :cond_8

    .line 1277
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->setUp()V

    .line 1278
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopNavigatingNotify()V

    .line 1281
    :cond_8
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    goto/16 :goto_0

    .line 1286
    :cond_9
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1288
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1292
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    if-eqz v0, :cond_a

    .line 1293
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->tearDown()V

    .line 1294
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopNavigatingNotify()V

    .line 1295
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsController:Lcom/android/server/location/GpsLocationProvider$GpsController;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider$GpsController;->stopController()V

    .line 1298
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1299
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private updateStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 1195
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1196
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1197
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1198
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1201
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 1915
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1917
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1159
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1160
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 1165
    :goto_0
    return-void

    .line 1161
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    .line 1162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public doStartUsingNetwork()I
    .locals 8

    .prologue
    const/4 v4, 0x3

    .line 2475
    const/4 v1, 0x0

    .line 2476
    .local v1, "networkType":I
    const-string v0, "enableSUPL"

    .line 2477
    .local v0, "feature":Ljava/lang/String;
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    .line 2479
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2483
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 2485
    .local v3, "phoneNetwokrType":I
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[agps] WARNING: GpsLocationProvider  phoneNetwokrType=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] isESUPL=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isESUPL()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] isEmergencyCallDialed=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isEmergencyCallDialed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const/16 v5, 0xd

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isESUPL()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2489
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isEmergencyCallDialed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2490
    const/16 v1, 0xf

    .line 2491
    const-string v0, "enableEmergency"

    .line 2492
    const/16 v5, 0xf

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    .line 2500
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2502
    :cond_2
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[agps] APN_REQUEST_FAILED: hasIccCard="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hasIccCard()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isAirplaneModeOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isAirplaneModeOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :goto_1
    return v4

    .line 2494
    :cond_3
    const/16 v1, 0xb

    .line 2495
    const-string v0, "enableIMS"

    .line 2496
    const/16 v5, 0xb

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    goto :goto_0

    .line 2508
    :cond_4
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v1, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2408
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    const-string v1, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2410
    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2411
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2413
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2416
    :cond_4
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2420
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1070
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1076
    :goto_0
    return-void

    .line 1072
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1073
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    return-object v0
.end method

.method public getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .prologue
    .line 888
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1191
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1205
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2533
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isESUPL()Z
    .locals 1

    .prologue
    .line 2464
    const-string v0, "/data/agps_supl/isESUPL"

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallDialed()Z
    .locals 1

    .prologue
    .line 2468
    const-string v0, "/data/agps_supl/isEmergencyCallDialed"

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsEmergencyCallDialed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1182
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 1183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2459
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2460
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method protected isWapPushLegal(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 2425
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 2426
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "application/vnd.omaloc-supl-init"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2427
    :cond_0
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[agps] ERR: content type is ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], but we expect [application/vnd.omaloc-supl-init]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    .end local v3    # "type":Ljava/lang/String;
    :goto_0
    return v5

    .line 2431
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2432
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 2433
    const-string v6, "GpsLocationProvider"

    const-string v7, "[agps] ERR: wspBundle is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2452
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2453
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2436
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "wspHeaders"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2437
    .local v4, "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_3

    .line 2438
    const-string v6, "GpsLocationProvider"

    const-string v7, "[agps] ERR: wspHeader is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2441
    :cond_3
    const-string v6, "X-Wap-Application-Id"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2442
    .local v0, "appId":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 2443
    const-string v6, "GpsLocationProvider"

    const-string v7, "[agps] ERR: appId(X-Wap-Application-Id) is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2446
    :cond_4
    const-string v6, "x-oma-application:ulp.ua"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2447
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[agps] ERR: appId is ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], but we expect [x-oma-application:ulp.ua]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2451
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 2107
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2121
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2122
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2123
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2124
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2125
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2126
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2127
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2128
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2129
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2130
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2131
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2137
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string p10, ""

    .line 2138
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2141
    .local v4, "extraProp":Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2148
    :goto_3
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2150
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2123
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "extraProp":Ljava/util/Properties;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2124
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2125
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 2143
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "extraProp":Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 2145
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2153
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2155
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2156
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1353
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1355
    .local v2, "result":Z
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1356
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1369
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1370
    return v2

    .line 1357
    :cond_1
    const-string v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1358
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1359
    const/4 v2, 0x1

    goto :goto_0

    .line 1360
    :cond_2
    const-string v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1361
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_0

    .line 1362
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1363
    const/4 v2, 0x1

    goto :goto_0

    .line 1366
    :cond_3
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1210
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    invoke-direct {v2, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1211
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 892
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 893
    return-void
.end method
