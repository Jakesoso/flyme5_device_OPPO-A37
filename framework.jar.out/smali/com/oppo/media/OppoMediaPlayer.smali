.class public Lcom/oppo/media/OppoMediaPlayer;
.super Ljava/lang/Object;
.source "OppoMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;,
        Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;,
        Lcom/oppo/media/OppoMediaPlayer$EventHandler;,
        Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoMediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mCurrentPosition:I

.field private mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:I

.field private mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

.field private mOppoAudioTrack:Lcom/oppo/media/OppoAudioTrack;

.field private mScreenOnWhilePlaying:Z

.field private mSeekPosition:I

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUsage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 556
    const-string v0, "OppoMediaPlayer"

    const-string/jumbo v1, "system load"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string/jumbo v0, "oppostagefright"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 562
    const-string v0, "avfmt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 563
    const-string/jumbo v0, "oppoplayer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 565
    invoke-static {}, Lcom/oppo/media/OppoMediaPlayer;->native_init()V

    .line 566
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object v5, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 587
    iput v4, p0, Lcom/oppo/media/OppoMediaPlayer;->mUsage:I

    .line 588
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mStreamType:I

    .line 600
    const-string v2, "OppoMediaPlayer"

    const-string v3, "OppoMediaPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 603
    new-instance v2, Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;-><init>(Lcom/oppo/media/OppoMediaPlayer;Lcom/oppo/media/OppoMediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    .line 609
    :goto_0
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 610
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 616
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/oppo/media/OppoMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 617
    iput v4, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    iput v4, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    .line 618
    return-void

    .line 604
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 605
    new-instance v2, Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;-><init>(Lcom/oppo/media/OppoMediaPlayer;Lcom/oppo/media/OppoMediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    goto :goto_0

    .line 607
    :cond_1
    iput-object v5, p0, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lcom/oppo/media/OppoMediaPlayer;)J
    .locals 2
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/media/OppoMediaPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/media/OppoMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/media/OppoMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/media/OppoMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/oppo/media/OppoMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/media/OppoMediaPlayer;)Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoMediaPlayer;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1717
    const-string v0, "application/x-subrip"

    if-ne p0, v0, :cond_0

    .line 1718
    const/4 v0, 0x1

    .line 1720
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Lcom/oppo/media/OppoMediaPlayer;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    const/4 v8, 0x0

    .line 847
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 848
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    move-object v0, v8

    .line 866
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 851
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Lcom/oppo/media/OppoMediaPlayer;

    invoke-direct {v0}, Lcom/oppo/media/OppoMediaPlayer;-><init>()V

    .line 852
    .local v0, "mp":Lcom/oppo/media/OppoMediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 853
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 854
    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 856
    .end local v0    # "mp":Lcom/oppo/media/OppoMediaPlayer;
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 857
    .local v7, "ex":Ljava/io/IOException;
    const-string v1, "OppoMediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "ex":Ljava/io/IOException;
    :goto_1
    move-object v0, v8

    .line 866
    goto :goto_0

    .line 859
    :catch_1
    move-exception v7

    .line 860
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "OppoMediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 862
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 863
    .local v7, "ex":Ljava/lang/SecurityException;
    const-string v1, "OppoMediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lcom/oppo/media/OppoMediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/media/OppoMediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/oppo/media/OppoMediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/oppo/media/OppoMediaPlayer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 808
    :try_start_0
    new-instance v1, Lcom/oppo/media/OppoMediaPlayer;

    invoke-direct {v1}, Lcom/oppo/media/OppoMediaPlayer;-><init>()V

    .line 809
    .local v1, "mp":Lcom/oppo/media/OppoMediaPlayer;
    invoke-virtual {v1, p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 810
    if-eqz p2, :cond_0

    .line 811
    invoke-virtual {v1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 813
    :cond_0
    invoke-virtual {v1}, Lcom/oppo/media/OppoMediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 826
    .end local v1    # "mp":Lcom/oppo/media/OppoMediaPlayer;
    :goto_0
    return-object v1

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "OppoMediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 818
    :catch_1
    move-exception v0

    .line 819
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "OppoMediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 821
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 822
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v2, "OppoMediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getAudioStreamType()I
    .locals 2

    .prologue
    .line 1067
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1068
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mStreamType:I

    .line 1070
    :cond_0
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mStreamType:I

    return v0
.end method

.method private isRestricted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1055
    :try_start_0
    iget v4, p0, Lcom/oppo/media/OppoMediaPlayer;->mUsage:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mUsage:I

    .line 1057
    .local v2, "usage":I
    :goto_0
    iget-object v4, p0, Lcom/oppo/media/OppoMediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1059
    .local v1, "mode":I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 1061
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :cond_0
    :goto_1
    return v3

    .line 1055
    :cond_1
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->getAudioStreamType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 2457
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2101
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/media/OppoMediaPlayer;

    .line 2102
    .local v1, "mp":Lcom/oppo/media/OppoMediaPlayer;
    if-nez v1, :cond_1

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2106
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 2109
    invoke-virtual {v1}, Lcom/oppo/media/OppoMediaPlayer;->start()V

    .line 2111
    :cond_2
    iget-object v2, v1, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 2112
    iget-object v2, v1, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2113
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1916
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1919
    .local v0, "reply":Landroid/os/Parcel;
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1920
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1921
    invoke-virtual {p0, v1, v0}, Lcom/oppo/media/OppoMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1926
    return-void

    .line 1919
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 1923
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 973
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 974
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 976
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 977
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 978
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 982
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 980
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/media/OppoMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1156
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1162
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mStayAwake:Z

    .line 1163
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 1164
    return-void

    .line 1158
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1170
    :cond_0
    return-void

    .line 1168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native _getCurrentPosition()I
.end method

.method public native _seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1777
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 1778
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1779
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/oppo/media/OppoMediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    :cond_1
    :goto_0
    return-void

    .line 1783
    :cond_2
    const/4 v0, 0x0

    .line 1785
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1786
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "r"

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1787
    if-nez v0, :cond_3

    .line 1793
    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1790
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/oppo/media/OppoMediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1793
    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1792
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    .line 1793
    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1792
    :catch_1
    move-exception v3

    .line 1793
    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1793
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 1794
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1841
    invoke-static {p6}, Lcom/oppo/media/OppoMediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1842
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mimeType for timed text source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1846
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1847
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1850
    .local v0, "reply":Landroid/os/Parcel;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1851
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1852
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1853
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1854
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {p0, v1, v0}, Lcom/oppo/media/OppoMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1860
    return-void

    .line 1857
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1818
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/media/OppoMediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 1819
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1743
    invoke-static {p2}, Lcom/oppo/media/OppoMediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1745
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1748
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1750
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1751
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1752
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Lcom/oppo/media/OppoMediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1758
    return-void

    .line 1756
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1911
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/media/OppoMediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 1912
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1982
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->native_finalize()V

    .line 1983
    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1226
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    if-ltz v0, :cond_0

    .line 1227
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    .line 1229
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/media/OppoMediaPlayer;->_getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public native getDuration()I
.end method

.method public getTrackInfo()[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1689
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1692
    .local v0, "reply":Landroid/os/Parcel;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    invoke-virtual {p0, v1, v0}, Lcom/oppo/media/OppoMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1694
    sget-object v3, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    .local v2, "trackInfo":[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1697
    .end local v2    # "trackInfo":[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 664
    invoke-direct {p0, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 665
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 666
    if-eqz v0, :cond_0

    .line 667
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :cond_0
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 646
    .local v0, "parcel":Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 647
    return-object v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1095
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1096
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_pause()V

    .line 1097
    return-void
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1329
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 1330
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    .line 1331
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    .line 1332
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    .line 1333
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    .line 1334
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    .line 1335
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    .line 1336
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    .line 1337
    iput-object v1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnTimedTextListener:Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;

    .line 1338
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_release()V

    .line 1339
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1349
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_reset()V

    .line 1351
    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mEventHandler:Lcom/oppo/media/OppoMediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1352
    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1208
    iput p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mCurrentPosition:I

    .line 1209
    iget v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    if-gez v0, :cond_0

    .line 1210
    iput p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSeekPosition:I

    .line 1211
    invoke-virtual {p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->_seekTo(I)V

    .line 1216
    :goto_0
    return-void

    .line 1213
    :cond_0
    const-string v0, "OppoMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek in progress - queue up seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1892
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oppo/media/OppoMediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 1893
    return-void
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setAuxEffectSendLevel(F)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 879
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 892
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 893
    .local v8, "scheme":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, "file"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 922
    :cond_1
    :goto_0
    return-void

    .line 898
    :cond_2
    const/4 v6, 0x0

    .line 900
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 901
    .local v7, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v7, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 902
    if-nez v6, :cond_3

    .line 915
    if-eqz v6, :cond_1

    .line 916
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 908
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 909
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    :goto_1
    if-eqz v6, :cond_1

    .line 916
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 911
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 914
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 915
    if-eqz v6, :cond_5

    .line 916
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 920
    :cond_5
    :goto_2
    const-string v0, "OppoMediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 914
    :catch_1
    move-exception v0

    .line 915
    if-eqz v6, :cond_5

    .line 916
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 915
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 916
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 997
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 998
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 941
    invoke-direct {p0, p1, v0, v0}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 954
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 955
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 957
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 958
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 959
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 961
    const/4 v1, 0x0

    .line 962
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 963
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 964
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 965
    add-int/lit8 v1, v1, 0x1

    .line 966
    goto :goto_0

    .line 968
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 684
    if-eqz p1, :cond_0

    .line 685
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 689
    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 690
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 691
    return-void

    .line 687
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setOnBufferingUpdateListener(Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 2194
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;

    .line 2195
    return-void
.end method

.method public setOnCompletionListener(Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    .prologue
    .line 2163
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnCompletionListener:Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;

    .line 2164
    return-void
.end method

.method public setOnErrorListener(Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    .prologue
    .line 2336
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnErrorListener:Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;

    .line 2337
    return-void
.end method

.method public setOnInfoListener(Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    .prologue
    .line 2448
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnInfoListener:Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;

    .line 2449
    return-void
.end method

.method public setOnPreparedListener(Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnPreparedListener:Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;

    .line 2138
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 2219
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;

    .line 2220
    return-void
.end method

.method public setOnTimedTextListener(Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;

    .prologue
    .line 2274
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnTimedTextListener:Lcom/oppo/media/OppoMediaPlayer$OnTimedTextListener;

    .line 2275
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 2249
    iput-object p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;

    .line 2250
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1146
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1147
    const-string v0, "OppoMediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    iput-boolean p1, p0, Lcom/oppo/media/OppoMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1150
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 1152
    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 711
    const-string v0, "OppoMediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/media/OppoMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 714
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 715
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->updateSurfaceScreenOn()V

    .line 716
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoMediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 763
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 764
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 767
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v3, 0x6

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    invoke-virtual {p0, v2, v1}, Lcom/oppo/media/OppoMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    return-void

    .line 771
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 1119
    const/4 v1, 0x0

    .line 1120
    .local v1, "washeld":Z
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1121
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    const/4 v1, 0x1

    .line 1123
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1125
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1128
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1129
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1131
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1132
    if-eqz v1, :cond_2

    .line 1133
    iget-object v2, p0, Lcom/oppo/media/OppoMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1135
    :cond_2
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1043
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p0, v1, v1}, Lcom/oppo/media/OppoMediaPlayer;->setVolume(FF)V

    .line 1047
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1048
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_start()V

    .line 1049
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1083
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/media/OppoMediaPlayer;->stayAwake(Z)V

    .line 1084
    invoke-direct {p0}, Lcom/oppo/media/OppoMediaPlayer;->_stop()V

    .line 1085
    return-void
.end method
