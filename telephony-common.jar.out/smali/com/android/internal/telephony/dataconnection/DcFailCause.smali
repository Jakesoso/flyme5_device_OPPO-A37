.class public final enum Lcom/android/internal/telephony/dataconnection/DcFailCause;
.super Ljava/lang/Enum;
.source "DcFailCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum APN_NOT_SUPPORT_IN_RAT_PLMN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum BCM_VIOLATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum BEARER_HANDLING_NOT_SUPPORT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum COLLISION_WITH_NW_INITIATED_REQUEST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum CONDITIONAL_IE_ERROR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum DUE_TO_REACH_RETRY_COUNTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INFORMATION_NOT_RECEIVED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INFO_ELEMENT_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INSUFFICIENT_LOCAL_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INVALID_TRANSACTION_ID_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum LAST_PDN_DISC_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MAX_PDP_NUMBER_REACHED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MBMS_CAPABILITIES_INSUFFICIENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MESSAGE_TYPE_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MULTICAST_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MULTIPLE_PDN_APN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_TEMP:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PDN_CONNECTION_NOT_EXIST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PDP_CONTEXT_WITHOU_TFT_ALREADY_ACTIVATED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PDP_FAIL_FALLBACK_RETRY:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REACTIVATION_REQUESTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SEMANTIC_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SEMANTIC_ERROR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SEMENTICALLY_INCORRECT_MESSAGE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SYNTACTICAL_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SYNTACTICAL_ERROR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum TCM_ESM_TIMER_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNSUPPORTED_QCI_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private static final sErrorCodeToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I

.field private final mRestartRadioOnRegularDeactivation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x1a

    const/16 v11, 0x19

    const/16 v10, 0x18

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 33
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v8, v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 37
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "OPERATOR_BARRED"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 38
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MBMS_CAPABILITIES_INSUFFICIENT"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v10}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MBMS_CAPABILITIES_INSUFFICIENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 39
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "LLC_SNDCP_FAILURE"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v11}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 40
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "INSUFFICIENT_RESOURCES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v12}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 41
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MISSING_UNKNOWN_APN"

    const/4 v6, 0x5

    const/16 v7, 0x1b

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 42
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/4 v6, 0x6

    const/16 v7, 0x1c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 43
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "USER_AUTHENTICATION"

    const/4 v6, 0x7

    const/16 v7, 0x1d

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 44
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ACTIVATION_REJECT_GGSN"

    const/16 v6, 0x1e

    invoke-direct {v4, v5, v9, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 45
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ACTIVATION_REJECT_UNSPECIFIED"

    const/16 v6, 0x9

    const/16 v7, 0x1f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 46
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v6, 0xa

    const/16 v7, 0x20

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 47
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v6, 0xb

    const/16 v7, 0x21

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 48
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v6, 0xc

    const/16 v7, 0x22

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 49
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "NSAPI_IN_USE"

    const/16 v6, 0xd

    const/16 v7, 0x23

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 50
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "REGULAR_DEACTIVATION"

    const/16 v6, 0xe

    const/16 v7, 0x24

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 51
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "QOS_NOT_ACCEPTED"

    const/16 v6, 0xf

    const/16 v7, 0x25

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 52
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "NETWORK_FAILURE"

    const/16 v6, 0x10

    const/16 v7, 0x26

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 53
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "REACTIVATION_REQUESTED"

    const/16 v6, 0x11

    const/16 v7, 0x27

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REACTIVATION_REQUESTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 54
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "FEATURE_NOT_SUPPORTED"

    const/16 v6, 0x12

    const/16 v7, 0x28

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 55
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SEMANTIC_ERROR_IN_TFT"

    const/16 v6, 0x13

    const/16 v7, 0x29

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SEMANTIC_ERROR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 56
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SYNTACTICAL_ERROR_IN_TFT"

    const/16 v6, 0x14

    const/16 v7, 0x2a

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SYNTACTICAL_ERROR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 57
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "UNKNOWN_PDP_CONTEXT"

    const/16 v6, 0x15

    const/16 v7, 0x2b

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 58
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SEMANTIC_ERROR_IN_PACKET_FILTER"

    const/16 v6, 0x16

    const/16 v7, 0x2c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SEMANTIC_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 59
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SYNTACTICAL_ERROR_IN_PACKET_FILTER"

    const/16 v6, 0x17

    const/16 v7, 0x2d

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SYNTACTICAL_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 60
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PDP_CONTEXT_WITHOU_TFT_ALREADY_ACTIVATED"

    const/16 v6, 0x2e

    invoke-direct {v4, v5, v10, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_CONTEXT_WITHOU_TFT_ALREADY_ACTIVATED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 61
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MULTICAST_GROUP_MEMBERSHIP_TIMEOUT"

    const/16 v6, 0x2f

    invoke-direct {v4, v5, v11, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MULTICAST_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 62
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "BCM_VIOLATION"

    const/16 v6, 0x30

    invoke-direct {v4, v5, v12, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->BCM_VIOLATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 63
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "LAST_PDN_DISC_NOT_ALLOWED"

    const/16 v6, 0x1b

    const/16 v7, 0x31

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LAST_PDN_DISC_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 64
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ONLY_IPV4_ALLOWED"

    const/16 v6, 0x1c

    const/16 v7, 0x32

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 65
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ONLY_IPV6_ALLOWED"

    const/16 v6, 0x1d

    const/16 v7, 0x33

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 66
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ONLY_SINGLE_BEARER_ALLOWED"

    const/16 v6, 0x1e

    const/16 v7, 0x34

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 67
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "INFORMATION_NOT_RECEIVED"

    const/16 v6, 0x1f

    const/16 v7, 0x35

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INFORMATION_NOT_RECEIVED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 68
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PDN_CONNECTION_NOT_EXIST"

    const/16 v6, 0x20

    const/16 v7, 0x36

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDN_CONNECTION_NOT_EXIST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 69
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MULTIPLE_PDN_APN_NOT_ALLOWED"

    const/16 v6, 0x21

    const/16 v7, 0x37

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MULTIPLE_PDN_APN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 70
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "COLLISION_WITH_NW_INITIATED_REQUEST"

    const/16 v6, 0x22

    const/16 v7, 0x38

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->COLLISION_WITH_NW_INITIATED_REQUEST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 71
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "UNSUPPORTED_QCI_VALUE"

    const/16 v6, 0x23

    const/16 v7, 0x3b

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNSUPPORTED_QCI_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 72
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "BEARER_HANDLING_NOT_SUPPORT"

    const/16 v6, 0x24

    const/16 v7, 0x3c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->BEARER_HANDLING_NOT_SUPPORT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 73
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MAX_PDP_NUMBER_REACHED"

    const/16 v6, 0x25

    const/16 v7, 0x41

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MAX_PDP_NUMBER_REACHED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 74
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "APN_NOT_SUPPORT_IN_RAT_PLMN"

    const/16 v6, 0x26

    const/16 v7, 0x42

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->APN_NOT_SUPPORT_IN_RAT_PLMN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 75
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "INVALID_TRANSACTION_ID_VALUE"

    const/16 v6, 0x27

    const/16 v7, 0x51

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INVALID_TRANSACTION_ID_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 76
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SEMENTICALLY_INCORRECT_MESSAGE"

    const/16 v6, 0x28

    const/16 v7, 0x5f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SEMENTICALLY_INCORRECT_MESSAGE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 77
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "INVALID_MANDATORY_INFO"

    const/16 v6, 0x29

    const/16 v7, 0x60

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 78
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MESSAGE_TYPE_NONEXIST_NOT_IMPLEMENTED"

    const/16 v6, 0x2a

    const/16 v7, 0x61

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MESSAGE_TYPE_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 79
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    const/16 v6, 0x2b

    const/16 v7, 0x62

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 80
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "INFO_ELEMENT_NONEXIST_NOT_IMPLEMENTED"

    const/16 v6, 0x2c

    const/16 v7, 0x63

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INFO_ELEMENT_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 81
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "CONDITIONAL_IE_ERROR"

    const/16 v6, 0x2d

    const/16 v7, 0x64

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONDITIONAL_IE_ERROR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 82
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    const/16 v6, 0x2e

    const/16 v7, 0x65

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 83
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PROTOCOL_ERRORS"

    const/16 v6, 0x2f

    const/16 v7, 0x6f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 84
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_PDP_CONTEXT"

    const/16 v6, 0x30

    const/16 v7, 0x70

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 88
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "REGISTRATION_FAIL"

    const/16 v6, 0x31

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 89
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "GPRS_REGISTRATION_FAIL"

    const/16 v6, 0x32

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 90
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "SIGNAL_LOST"

    const/16 v6, 0x33

    const/4 v7, -0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 91
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PREF_RADIO_TECH_CHANGED"

    const/16 v6, 0x34

    const/4 v7, -0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 92
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "RADIO_POWER_OFF"

    const/16 v6, 0x35

    const/4 v7, -0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 93
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "TETHERED_CALL_ACTIVE"

    const/16 v6, 0x36

    const/4 v7, -0x6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 94
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PDP_FAIL_FALLBACK_RETRY"

    const/16 v6, 0x37

    const/16 v7, -0x3e8

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_FALLBACK_RETRY:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 95
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "INSUFFICIENT_LOCAL_RESOURCES"

    const/16 v6, 0x38

    const v7, 0xffffe

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_LOCAL_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 96
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "ERROR_UNSPECIFIED"

    const/16 v6, 0x39

    const v7, 0xffff

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 100
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "UNKNOWN"

    const/16 v6, 0x3a

    const/high16 v7, 0x10000

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 101
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "RADIO_NOT_AVAILABLE"

    const/16 v6, 0x3b

    const v7, 0x10001

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 102
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "UNACCEPTABLE_NETWORK_PARAMETER"

    const/16 v6, 0x3c

    const v7, 0x10002

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 103
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    const/16 v6, 0x3d

    const v7, 0x10003

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 104
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "LOST_CONNECTION"

    const/16 v6, 0x3e

    const v7, 0x10004

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 105
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "RESET_BY_FRAMEWORK"

    const/16 v6, 0x3f

    const v7, 0x10005

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 107
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_TEMP"

    const/16 v6, 0x40

    const/16 v7, 0x1402

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_TEMP:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 108
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "TCM_ESM_TIMER_TIMEOUT"

    const/16 v6, 0x41

    const v7, 0x1502a

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TCM_ESM_TIMER_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 110
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "DUE_TO_REACH_RETRY_COUNTER"

    const/16 v6, 0x42

    const/16 v7, 0xe0f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->DUE_TO_REACH_RETRY_COUNTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 32
    const/16 v4, 0x43

    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MBMS_CAPABILITIES_INSUFFICIENT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LLC_SNDCP_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v9

    const/16 v5, 0x9

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->QOS_NOT_ACCEPTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REACTIVATION_REQUESTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->FEATURE_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SEMANTIC_ERROR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SYNTACTICAL_ERROR_IN_TFT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SEMANTIC_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x17

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SYNTACTICAL_ERROR_IN_PACKET_FILTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_CONTEXT_WITHOU_TFT_ALREADY_ACTIVATED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v10

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MULTICAST_GROUP_MEMBERSHIP_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v11

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->BCM_VIOLATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v5, v4, v12

    const/16 v5, 0x1b

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LAST_PDN_DISC_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INFORMATION_NOT_RECEIVED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x20

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDN_CONNECTION_NOT_EXIST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x21

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MULTIPLE_PDN_APN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x22

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->COLLISION_WITH_NW_INITIATED_REQUEST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x23

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNSUPPORTED_QCI_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x24

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->BEARER_HANDLING_NOT_SUPPORT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x25

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MAX_PDP_NUMBER_REACHED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x26

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->APN_NOT_SUPPORT_IN_RAT_PLMN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x27

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INVALID_TRANSACTION_ID_VALUE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x28

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SEMENTICALLY_INCORRECT_MESSAGE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x29

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INVALID_MANDATORY_INFO:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MESSAGE_TYPE_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INFO_ELEMENT_NONEXIST_NOT_IMPLEMENTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONDITIONAL_IE_ERROR:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x30

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PN_RESTRICTION_VALUE_INCOMPATIBLE_WITH_PDP_CONTEXT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x31

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x32

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x33

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x34

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x35

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x36

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x37

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_FALLBACK_RETRY:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x38

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_LOCAL_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x39

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x40

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PAM_ATT_PDN_ACCESS_REJECT_IMS_PDN_BLOCK_TEMP:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x41

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TCM_ESM_TIMER_TIMEOUT:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x42

    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcFailCause;->DUE_TO_REACH_RETRY_COUNTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 118
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    .line 119
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 120
    .local v1, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    .line 125
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    .line 126
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 170
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 171
    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 174
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DcFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    return v0
.end method

.method public isEventLoggable()Z
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestartRadioFail()Z
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
