.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$1;,
        Landroid/telephony/SmsMessage$NoEmsSupportConfig;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final MWI_EMAIL:I = 0x2

.field public static final MWI_FAX:I = 0x1

.field public static final MWI_OTHER:I = 0x3

.field public static final MWI_VIDEO:I = 0x7

.field public static final MWI_VOICEMAIL:I

.field private static mIsNoEmsSupportConfigListLoaded:Z

.field private static mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;


# instance fields
.field private mSubId:I

.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 894
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 940
    invoke-static {}, Landroid/telephony/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 941
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 1
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 183
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 184
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    const/4 v4, 0x1

    .line 334
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 338
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 339
    .local v0, "ret":[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 340
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v2, v0, v4

    .line 341
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 342
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 343
    return-object v0

    .line 334
    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .prologue
    .line 1122
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 1125
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 1126
    .local v0, "ret":[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 1127
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 1128
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 1129
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 1130
    return-object v0

    .line 1122
    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 459
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    .line 281
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 289
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 285
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 289
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 5
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1322
    const-string v2, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromEfRecord(): format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-string v2, "3gpp2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1324
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 1334
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    :goto_1
    return-object v1

    .line 1326
    :cond_1
    const-string v2, "3gpp"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1327
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 1330
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_2
    const-string v2, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFromEfRecord(): unsupported message format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 5
    .param p0, "pdu"    # [B

    .prologue
    const/4 v4, 0x2

    .line 199
    const/4 v2, 0x0

    .line 203
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 204
    .local v0, "activePhone":I
    if-ne v4, v0, :cond_2

    const-string v1, "3gpp2"

    .line 206
    .local v1, "format":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v3, :cond_1

    .line 210
    :cond_0
    if-ne v4, v0, :cond_3

    const-string v1, "3gpp"

    .line 212
    :goto_1
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 214
    :cond_1
    return-object v2

    .line 204
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    const-string v1, "3gpp"

    goto :goto_0

    .line 210
    .restart local v1    # "format":Ljava/lang/String;
    :cond_3
    const-string v1, "3gpp2"

    goto :goto_1
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v1, "3gpp2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 239
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    return-object v1

    .line 232
    :cond_0
    const-string v1, "3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 235
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 358
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {p0, v10, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 367
    .local v6, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v9, v11, :cond_b

    .line 369
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v9, :cond_8

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v9, :cond_8

    .line 370
    const/4 v8, 0x7

    .line 377
    .local v8, "udhLength":I
    :goto_1
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v9, v11, :cond_0

    .line 378
    add-int/lit8 v8, v8, 0x6

    .line 381
    :cond_0
    if-eqz v8, :cond_1

    .line 382
    add-int/lit8 v8, v8, 0x1

    .line 385
    :cond_1
    rsub-int v0, v8, 0xa0

    .line 403
    .end local v8    # "udhLength":I
    .local v0, "limit":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 404
    .local v1, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 405
    .local v4, "r":Landroid/content/res/Resources;
    const v9, #android:bool@config_sms_force_7bit_encoding#t

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 406
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 408
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 409
    move-object v1, p0

    .line 411
    :cond_4
    const/4 v3, 0x0

    .line 412
    .local v3, "pos":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 413
    .local v7, "textLen":I
    new-instance v5, Ljava/util/ArrayList;

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v3, v7, :cond_6

    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, "nextPos":I
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v9, v11, :cond_e

    .line 417
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v9

    if-eqz v9, :cond_d

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v9, v11, :cond_d

    .line 419
    sub-int v9, v7, v3

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int v2, v3, v9

    .line 431
    :goto_4
    if-le v2, v3, :cond_5

    if-le v2, v7, :cond_f

    .line 432
    :cond_5
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fragmentText failed ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " >= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " or "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " >= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v2    # "nextPos":I
    :cond_6
    return-object v5

    .line 358
    .end local v0    # "limit":I
    .end local v1    # "newMsgBody":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v7    # "textLen":I
    :cond_7
    invoke-static {p0, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    goto/16 :goto_0

    .line 371
    .restart local v6    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_8
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v9, :cond_9

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v9, :cond_a

    .line 372
    :cond_9
    const/4 v8, 0x4

    .restart local v8    # "udhLength":I
    goto/16 :goto_1

    .line 374
    .end local v8    # "udhLength":I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "udhLength":I
    goto/16 :goto_1

    .line 387
    .end local v8    # "udhLength":I
    :cond_b
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v9, v11, :cond_c

    .line 388
    const/16 v0, 0x86

    .line 395
    .restart local v0    # "limit":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v9

    if-nez v9, :cond_2

    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_2

    .line 396
    add-int/lit8 v0, v0, -0x2

    goto/16 :goto_2

    .line 399
    .end local v0    # "limit":I
    :cond_c
    const/16 v0, 0x8c

    .restart local v0    # "limit":I
    goto/16 :goto_2

    .line 422
    .restart local v1    # "newMsgBody":Ljava/lang/String;
    .restart local v2    # "nextPos":I
    .restart local v3    # "pos":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "textLen":I
    :cond_d
    iget v9, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v10, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v1, v3, v0, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v2

    goto :goto_4

    .line 428
    :cond_e
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v2

    goto :goto_4

    .line 436
    :cond_f
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    move v3, v2

    .line 438
    goto/16 :goto_3
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1145
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1146
    .local v0, "activePhone":I
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {p0, v11, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 1155
    .local v7, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v12, :cond_a

    .line 1157
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v10, :cond_7

    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v10, :cond_7

    .line 1158
    const/4 v9, 0x7

    .line 1165
    .local v9, "udhLength":I
    :goto_1
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v10, v12, :cond_0

    .line 1166
    add-int/lit8 v9, v9, 0x6

    .line 1169
    :cond_0
    if-eqz v9, :cond_1

    .line 1170
    add-int/lit8 v9, v9, 0x1

    .line 1173
    :cond_1
    rsub-int v1, v9, 0xa0

    .line 1182
    .end local v9    # "udhLength":I
    .local v1, "limit":I
    :goto_2
    const/4 v2, 0x0

    .line 1183
    .local v2, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 1184
    .local v5, "r":Landroid/content/res/Resources;
    const v10, #android:bool@config_sms_force_7bit_encoding#t

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1185
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1187
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1188
    move-object v2, p0

    .line 1190
    :cond_3
    const/4 v4, 0x0

    .line 1191
    .local v4, "pos":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    .line 1192
    .local v8, "textLen":I
    new-instance v6, Ljava/util/ArrayList;

    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1193
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v4, v8, :cond_5

    .line 1194
    const/4 v3, 0x0

    .line 1195
    .local v3, "nextPos":I
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v12, :cond_d

    .line 1196
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v10

    if-eqz v10, :cond_c

    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v10, v12, :cond_c

    .line 1198
    sub-int v10, v8, v4

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v3, v4, v10

    .line 1210
    :goto_4
    if-le v3, v4, :cond_4

    if-le v3, v8, :cond_e

    .line 1211
    :cond_4
    const-string v10, "SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fragmentText failed ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " >= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " or "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " >= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .end local v3    # "nextPos":I
    :cond_5
    return-object v6

    .line 1146
    .end local v1    # "limit":I
    .end local v2    # "newMsgBody":Ljava/lang/String;
    .end local v4    # "pos":I
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v8    # "textLen":I
    :cond_6
    invoke-static {p0, v11, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    goto/16 :goto_0

    .line 1159
    .restart local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_7
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v10, :cond_8

    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v10, :cond_9

    .line 1160
    :cond_8
    const/4 v9, 0x4

    .restart local v9    # "udhLength":I
    goto/16 :goto_1

    .line 1162
    .end local v9    # "udhLength":I
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "udhLength":I
    goto/16 :goto_1

    .line 1175
    .end local v9    # "udhLength":I
    :cond_a
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v10, v12, :cond_b

    .line 1176
    const/16 v1, 0x86

    .restart local v1    # "limit":I
    goto/16 :goto_2

    .line 1178
    .end local v1    # "limit":I
    :cond_b
    const/16 v1, 0x8c

    .restart local v1    # "limit":I
    goto/16 :goto_2

    .line 1201
    .restart local v2    # "newMsgBody":Ljava/lang/String;
    .restart local v3    # "nextPos":I
    .restart local v4    # "pos":I
    .restart local v5    # "r":Landroid/content/res/Resources;
    .restart local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "textLen":I
    :cond_c
    iget v10, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v11, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v2, v4, v1, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v3

    goto :goto_4

    .line 1207
    :cond_d
    invoke-static {v4, v1, v2}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v3

    goto :goto_4

    .line 1215
    :cond_e
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    move v4, v3

    .line 1217
    goto/16 :goto_3
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1

    .prologue
    .line 927
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 930
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .prologue
    .line 494
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 502
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 498
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .prologue
    .line 965
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 974
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 970
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;SS[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "originalPort"    # S
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .prologue
    .line 994
    const-string v1, "SmsMessage"

    const-string v2, "[xj android.telephony.SmsMessage getSubmitPdu"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1004
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    if-eqz v0, :cond_1

    .line 1005
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    .line 1007
    :goto_1
    return-object v1

    .line 1000
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0

    .line 1007
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    .line 523
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 531
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 527
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 303
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static hasEmsSupport()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 820
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 842
    .local v0, "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .local v2, "gid":Ljava/lang/String;
    .local v3, "i$":I
    .local v4, "identity":J
    .local v6, "len$":I
    .local v7, "simOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 826
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "identity":J
    .end local v6    # "len$":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 828
    .restart local v4    # "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 829
    .restart local v7    # "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 831
    .restart local v2    # "gid":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 835
    .local v1, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 839
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 831
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v1    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 834
    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v1    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v2    # "gid":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "simOperator":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isCdma()Z
    .locals 3

    .prologue
    .line 1344
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SmsMessage;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1345
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCdmaVoice()Z
    .locals 2

    .prologue
    .line 811
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 812
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoEmsSupportConfigListExisted()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    sget-boolean v4, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    if-nez v4, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    const v4, #android:array@no_ems_support_sim_operators#t

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "listArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 903
    array-length v4, v1

    new-array v4, v4, [Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    sput-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 904
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 905
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    new-instance v5, Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    aget-object v6, v1, v0

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/telephony/SmsMessage$NoEmsSupportConfig;-><init>([Ljava/lang/String;)V

    aput-object v5, v4, v0

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "i":I
    :cond_0
    sput-boolean v3, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    .line 912
    .end local v1    # "listArray":[Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 916
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 946
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 949
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 256
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 262
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 265
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static shouldAppendPageNumberAsPrefix()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 850
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 872
    .local v0, "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .local v2, "gid":Ljava/lang/String;
    .local v3, "i$":I
    .local v4, "identity":J
    .local v6, "len$":I
    .local v7, "simOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 856
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "identity":J
    .end local v6    # "len$":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 858
    .restart local v4    # "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 859
    .restart local v7    # "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 861
    .restart local v2    # "gid":Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 864
    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 865
    .local v1, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 869
    :cond_2
    iget-boolean v8, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    goto :goto_0

    .line 861
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v1    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "simOperator":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 864
    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v1    # "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .restart local v2    # "gid":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "simOperator":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static useCdmaFormatForMoSms()Z
    .locals 2

    .prologue
    .line 797
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    .line 802
    :goto_0
    return v0

    :cond_0
    const-string v0, "3gpp2"

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public fragmentTextUsingTed(ILjava/lang/String;Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "subId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "ted"    # Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 1236
    const/4 v8, 0x0

    .line 1238
    .local v8, "useCdmaFormat":Z
    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1240
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    move v8, v9

    .line 1249
    :goto_0
    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v9, :cond_b

    .line 1251
    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-eqz v10, :cond_8

    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v10, :cond_8

    .line 1252
    const/4 v7, 0x7

    .line 1259
    .local v7, "udhLength":I
    :goto_1
    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v10, v9, :cond_0

    .line 1260
    add-int/lit8 v7, v7, 0x6

    .line 1263
    :cond_0
    if-eqz v7, :cond_1

    .line 1264
    add-int/lit8 v7, v7, 0x1

    .line 1267
    :cond_1
    rsub-int v0, v7, 0xa0

    .line 1276
    .end local v7    # "udhLength":I
    .local v0, "limit":I
    :goto_2
    const/4 v1, 0x0

    .line 1277
    .local v1, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1278
    .local v4, "r":Landroid/content/res/Resources;
    const v10, #android:bool@config_sms_force_7bit_encoding#t

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1279
    invoke-static {p2}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1282
    move-object v1, p2

    .line 1284
    :cond_3
    const/4 v3, 0x0

    .line 1285
    .local v3, "pos":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1286
    .local v6, "textLen":I
    new-instance v5, Ljava/util/ArrayList;

    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1287
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v3, v6, :cond_5

    .line 1288
    const/4 v2, 0x0

    .line 1289
    .local v2, "nextPos":I
    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v10, v9, :cond_e

    .line 1290
    if-eqz v8, :cond_d

    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v10, v9, :cond_d

    .line 1292
    sub-int v10, v6, v3

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v3, v10

    .line 1304
    :goto_4
    if-le v2, v3, :cond_4

    if-le v2, v6, :cond_f

    .line 1305
    :cond_4
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fragmentText failed ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " >= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " or "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " >= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    .end local v2    # "nextPos":I
    :cond_5
    return-object v5

    .line 1240
    .end local v0    # "limit":I
    .end local v1    # "newMsgBody":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "textLen":I
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1244
    :cond_7
    const-string v10, "3gpp2"

    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto/16 :goto_0

    .line 1253
    :cond_8
    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-nez v10, :cond_9

    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-eqz v10, :cond_a

    .line 1254
    :cond_9
    const/4 v7, 0x4

    .restart local v7    # "udhLength":I
    goto/16 :goto_1

    .line 1256
    .end local v7    # "udhLength":I
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "udhLength":I
    goto/16 :goto_1

    .line 1269
    .end local v7    # "udhLength":I
    :cond_b
    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v10, v9, :cond_c

    .line 1270
    const/16 v0, 0x86

    .restart local v0    # "limit":I
    goto/16 :goto_2

    .line 1272
    .end local v0    # "limit":I
    :cond_c
    const/16 v0, 0x8c

    .restart local v0    # "limit":I
    goto/16 :goto_2

    .line 1295
    .restart local v1    # "newMsgBody":Ljava/lang/String;
    .restart local v2    # "nextPos":I
    .restart local v3    # "pos":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "textLen":I
    :cond_d
    iget v10, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v11, p3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v1, v3, v0, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v2

    goto :goto_4

    .line 1301
    :cond_e
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v2

    goto :goto_4

    .line 1309
    :cond_f
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    move v3, v2

    .line 1311
    goto/16 :goto_3
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodingType()I
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEncodingType()I

    move-result v0

    return v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 742
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 571
    sget-object v0, Landroid/telephony/SmsMessage$1;->$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass:[I

    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 576
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    .line 572
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 573
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 574
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 575
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsc()[B
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1040
    const-string v5, "SmsMessage"

    const-string v6, "getSmsc"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    .line 1043
    .local v1, "pdu":[B
    invoke-direct {p0}, Landroid/telephony/SmsMessage;->isCdma()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1044
    const-string v5, "SmsMessage"

    const-string v6, "getSmsc with CDMA and return null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 1061
    :goto_0
    return-object v2

    .line 1048
    :cond_0
    if-nez v1, :cond_1

    .line 1049
    const-string v5, "SmsMessage"

    const-string v6, "pdu is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 1050
    goto :goto_0

    .line 1053
    :cond_1
    aget-byte v5, v1, v7

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v5, 0x1

    .line 1054
    .local v3, "smscLen":I
    new-array v2, v3, [B

    .line 1057
    .local v2, "smsc":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    array-length v7, v2

    invoke-static {v1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "SmsMessage"

    const-string v6, "Out of boudns"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 1061
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/telephony/SmsMessage;->mSubId:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTpdu()[B
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1074
    const-string v6, "SmsMessage"

    const-string v7, "getTpdu"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v1

    .line 1077
    .local v1, "pdu":[B
    invoke-direct {p0}, Landroid/telephony/SmsMessage;->isCdma()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1078
    const-string v5, "SmsMessage"

    const-string v6, "getSmsc with CDMA and return null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .end local v1    # "pdu":[B
    :goto_0
    return-object v1

    .line 1082
    .restart local v1    # "pdu":[B
    :cond_0
    if-nez v1, :cond_1

    .line 1083
    const-string v6, "SmsMessage"

    const-string v7, "pdu is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 1084
    goto :goto_0

    .line 1087
    :cond_1
    aget-byte v6, v1, v8

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v2, v6, 0x1

    .line 1088
    .local v2, "smscLen":I
    array-length v6, v1

    sub-int v4, v6, v2

    .line 1089
    .local v4, "tpduLen":I
    new-array v3, v4, [B

    .line 1092
    .local v3, "tpdu":[B
    const/4 v6, 0x0

    :try_start_0
    array-length v7, v3

    invoke-static {v1, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 1093
    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "SmsMessage"

    const-string v7, "Out of boudns"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 1096
    goto :goto_0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public getValidityPeriodRelative()I
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getValidityPeriodRelative()I

    move-result v0

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 148
    iput p1, p0, Landroid/telephony/SmsMessage;->mSubId:I

    .line 149
    return-void
.end method
