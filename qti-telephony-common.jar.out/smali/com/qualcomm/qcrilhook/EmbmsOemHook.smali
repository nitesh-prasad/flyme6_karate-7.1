.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$CoverageState;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$EmbmsStatus;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$OosState;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$RadioStateIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$RequestIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;
    }
.end annotation


# static fields
.field private static final DEFAULT_PHONE:I = 0x0

.field private static final EMBMSHOOK_MSG_ID_ACTDEACT:S = 0x11s

.field private static final EMBMSHOOK_MSG_ID_ACTIVATE:S = 0x2s

.field private static final EMBMSHOOK_MSG_ID_CONTENT_DESCRIPTION:S = 0x1ds

.field private static final EMBMSHOOK_MSG_ID_DEACTIVATE:S = 0x3s

.field private static final EMBMSHOOK_MSG_ID_DELIVER_LOG_PACKET:S = 0x16s

.field private static final EMBMSHOOK_MSG_ID_DISABLE:S = 0x1s

.field private static final EMBMSHOOK_MSG_ID_ENABLE:S = 0x0s

.field private static final EMBMSHOOK_MSG_ID_GET_ACTIVE:S = 0x5s

.field private static final EMBMSHOOK_MSG_ID_GET_ACTIVE_LOG_PACKET_IDS:S = 0x15s

.field private static final EMBMSHOOK_MSG_ID_GET_AVAILABLE:S = 0x4s

.field private static final EMBMSHOOK_MSG_ID_GET_COVERAGE:S = 0x8s

.field private static final EMBMSHOOK_MSG_ID_GET_E911_STATE:S = 0x1bs

.field private static final EMBMSHOOK_MSG_ID_GET_EMBMS_STATUS:S = 0x21s

.field private static final EMBMSHOOK_MSG_ID_GET_INTERESTED_TMGI_LIST_RESP:S = 0x23s

.field private static final EMBMSHOOK_MSG_ID_GET_PLMN_LIST:S = 0x1fs

.field private static final EMBMSHOOK_MSG_ID_GET_SIB16_COVERAGE:S = 0x18s

.field private static final EMBMSHOOK_MSG_ID_GET_SIG_STRENGTH:S = 0x9s

.field private static final EMBMSHOOK_MSG_ID_GET_TIME:S = 0x1as

.field private static final EMBMSHOOK_MSG_ID_SET_TIME:S = 0x17s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_ACTIVE_TMGI_LIST:S = 0xcs

.field private static final EMBMSHOOK_MSG_ID_UNSOL_AVAILABLE_TMGI_LIST:S = 0xfs

.field private static final EMBMSHOOK_MSG_ID_UNSOL_CELL_ID:S = 0x12s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_CONTENT_DESC_PER_OBJ_CONTROL:S = 0x1es

.field private static final EMBMSHOOK_MSG_ID_UNSOL_COVERAGE_STATE:S = 0xds

.field private static final EMBMSHOOK_MSG_ID_UNSOL_E911_STATE:S = 0x1cs

.field private static final EMBMSHOOK_MSG_ID_UNSOL_EMBMS_STATUS:S = 0x20s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_GET_INTERESTED_TMGI_LIST:S = 0x22s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_OOS_STATE:S = 0x10s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_RADIO_STATE:S = 0x13s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_SAI_LIST:S = 0x14s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_SIB16:S = 0x19s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_STATE_CHANGE:S = 0xbs

.field private static final EMBMS_SERVICE_ID:S = 0x2s

.field private static final FAILURE:I = -0x1

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final OEM_HOOK_RESPONSE:I = 0x1

.field private static final ONE_BYTE:S = 0x1s

.field private static final QCRILHOOK_READY_CALLBACK:I = 0x2

.field private static final SIZE_OF_EACH_PLMN_IN_BYTES:S = 0x6s

.field private static final SIZE_OF_TMGI:I = 0x6

.field private static final SUCCESS:I = 0x0

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_ACT_TMGI:B = 0x3t

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_DEACT_TMGI:B = 0x4t

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_EARFCN_LIST:B = 0x6t

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_PRIORITY:B = 0x5t

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_SAI_LIST:B = 0x10t

.field private static final TLV_TYPE_ACTDEACTIVATE_RESP_ACTTMGI:B = 0x11t

.field private static final TLV_TYPE_ACTDEACTIVATE_RESP_ACT_CODE:B = 0x2t

.field private static final TLV_TYPE_ACTDEACTIVATE_RESP_DEACTTMGI:B = 0x12t

.field private static final TLV_TYPE_ACTDEACTIVATE_RESP_DEACT_CODE:B = 0x3t

.field private static final TLV_TYPE_ACTIVATE_REQ_EARFCN_LIST:B = 0x5t

.field private static final TLV_TYPE_ACTIVATE_REQ_PRIORITY:B = 0x4t

.field private static final TLV_TYPE_ACTIVATE_REQ_SAI_LIST:B = 0x10t

.field private static final TLV_TYPE_ACTIVATE_REQ_TMGI:B = 0x3t

.field private static final TLV_TYPE_ACTIVATE_RESP_TMGI:B = 0x11t

.field private static final TLV_TYPE_ACTIVELOGPACKETID_REQ_PACKET_ID_LIST:S = 0x2s

.field private static final TLV_TYPE_ACTIVELOGPACKETID_RESP_PACKET_ID_LIST:S = 0x2s

.field private static final TLV_TYPE_COMMON_REQ_CALL_ID:B = 0x2t

.field private static final TLV_TYPE_COMMON_REQ_TRACE_ID:B = 0x1t

.field private static final TLV_TYPE_COMMON_RESP_CALL_ID:B = 0x10t

.field private static final TLV_TYPE_COMMON_RESP_CODE:B = 0x2t

.field private static final TLV_TYPE_COMMON_RESP_TRACE_ID:B = 0x1t

.field private static final TLV_TYPE_CONTENT_DESCRIPTION_REQ_PARAMETER_ARRAY:B = 0x10t

.field private static final TLV_TYPE_CONTENT_DESCRIPTION_REQ_TMGI:B = 0x3t

.field private static final TLV_TYPE_DEACTIVATE_REQ_TMGI:B = 0x3t

.field private static final TLV_TYPE_DEACTIVATE_RESP_TMGI:B = 0x11t

.field private static final TLV_TYPE_DELIVERLOGPACKET_REQ_LOG_PACKET:S = 0x3s

.field private static final TLV_TYPE_DELIVERLOGPACKET_REQ_PACKET_ID:S = 0x2s

.field private static final TLV_TYPE_ENABLE_RESP_IFNAME:B = 0x11t

.field private static final TLV_TYPE_ENABLE_RESP_IF_INDEX:B = 0x12t

.field private static final TLV_TYPE_GET_ACTIVE_RESP_TMGI_ARRAY:B = 0x10t

.field private static final TLV_TYPE_GET_AVAILABLE_RESP_TMGI_ARRAY:B = 0x10t

.field private static final TLV_TYPE_GET_COVERAGE_STATE_RESP_STATE:B = 0x10t

.field private static final TLV_TYPE_GET_E911_RESP_STATE:S = 0x10s

.field private static final TLV_TYPE_GET_EMBMS_STATUS_RESP:S = 0x2s

.field private static final TLV_TYPE_GET_INTERESTED_TMGI_LIST_RESP_TMGI:B = 0x3t

.field private static final TLV_TYPE_GET_PLMN_LIST_RESP_PLMN_LIST:B = 0x2t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_ACTIVE_TMGI_LIST:B = 0x14t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_EXCESS_SNR:B = 0x12t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_MBSFN_AREA_ID:B = 0x10t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_NUMBER_OF_TMGI_PER_MBSFN:B = 0x13t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_SNR:B = 0x11t

.field private static final TLV_TYPE_GET_TIME_RESP_DAY_LIGHT_SAVING:B = 0x10t

.field private static final TLV_TYPE_GET_TIME_RESP_LEAP_SECONDS:B = 0x11t

.field private static final TLV_TYPE_GET_TIME_RESP_LOCAL_TIME_OFFSET:B = 0x12t

.field private static final TLV_TYPE_GET_TIME_RESP_TIME_MSECONDS:B = 0x3t

.field private static final TLV_TYPE_SET_TIME_REQ_SNTP_SUCCESS:B = 0x1t

.field private static final TLV_TYPE_SET_TIME_REQ_TIME_MSECONDS:B = 0x10t

.field private static final TLV_TYPE_SET_TIME_REQ_TIME_STAMP:B = 0x11t

.field private static final TLV_TYPE_UNSOL_ACTIVE_IND_TMGI_ARRAY:S = 0x2s

.field private static final TLV_TYPE_UNSOL_AVAILABLE_IND_TMGI_ARRAY_OR_RESPONSE_CODE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_CELL_ID_IND_CID:S = 0x4s

.field private static final TLV_TYPE_UNSOL_CELL_ID_IND_MCC:S = 0x2s

.field private static final TLV_TYPE_UNSOL_CELL_ID_IND_MNC:S = 0x3s

.field private static final TLV_TYPE_UNSOL_CONTENT_DESC_PER_OBJ_CONTROL_CONTENT_CONTROL:S = 0x10s

.field private static final TLV_TYPE_UNSOL_CONTENT_DESC_PER_OBJ_CONTROL_STATUS_CONTROL:S = 0x11s

.field private static final TLV_TYPE_UNSOL_CONTENT_DESC_PER_OBJ_CONTROL_TMGI:S = 0x2s

.field private static final TLV_TYPE_UNSOL_COVERAGE_IND_STATE_OR_RESPONSE_CODE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_E911_STATE_OR_RESPONSE_CODE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_EMBMS_STATUS:S = 0x1s

.field private static final TLV_TYPE_UNSOL_OOS_IND_STATE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_OOS_IND_TMGI_ARRAY:S = 0x3s

.field private static final TLV_TYPE_UNSOL_RADIO_STATE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_SAI_IND_AVAILABLE_SAI_LIST:S = 0x4s

.field private static final TLV_TYPE_UNSOL_SAI_IND_CAMPED_SAI_LIST:S = 0x2s

.field private static final TLV_TYPE_UNSOL_SAI_IND_SAI_PER_GROUP_LIST:S = 0x3s

.field private static final TLV_TYPE_UNSOL_SIB16:S = 0x1s

.field private static final TLV_TYPE_UNSOL_STATE_IND_IF_INDEX:S = 0x3s

.field private static final TLV_TYPE_UNSOL_STATE_IND_IP_ADDRESS:S = 0x2s

.field private static final TLV_TYPE_UNSOL_STATE_IND_STATE:S = 0x1s

.field private static final TWO_BYTES:S = 0x2s

.field private static final UNSOL_BASE_QCRILHOOK:I = 0x1000

.field public static final UNSOL_TYPE_ACTIVE_TMGI_LIST:I = 0x2

.field public static final UNSOL_TYPE_AVAILABLE_TMGI_LIST:I = 0x4

.field public static final UNSOL_TYPE_BROADCAST_COVERAGE:I = 0x3

.field public static final UNSOL_TYPE_CELL_ID:I = 0x6

.field public static final UNSOL_TYPE_CONTENT_DESC_PER_OBJ_CONTROL:I = 0xb

.field public static final UNSOL_TYPE_E911_STATE:I = 0xa

.field public static final UNSOL_TYPE_EMBMSOEMHOOK_READY_CALLBACK:I = 0x1001

.field public static final UNSOL_TYPE_EMBMS_STATUS:I = 0xc

.field public static final UNSOL_TYPE_GET_INTERESTED_TMGI_LIST:I = 0xd

.field public static final UNSOL_TYPE_OOS_STATE:I = 0x5

.field public static final UNSOL_TYPE_RADIO_STATE:I = 0x7

.field public static final UNSOL_TYPE_SAI_LIST:I = 0x8

.field public static final UNSOL_TYPE_SIB16_COVERAGE:I = 0x9

.field public static final UNSOL_TYPE_STATE_CHANGE:I = 0x1

.field private static mRefCount:I

.field private static sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;


# instance fields
.field private mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

.field private mRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->parseActiveTmgi(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->parseTmgi(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->byteArrayToQmiArray(S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->intArrayToQmiArray(S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[IS)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->intArrayToQmiArray(S[IS)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->tmgiListArrayToQmiArray(S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "EmbmsOemHook"

    sput-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "EmbmsOemHook ()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qcrilhook/QmiOemHook;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v0, 0x1

    invoke-static {v2, p0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->registerService(SLandroid/os/Handler;I)V

    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    return-void
.end method

.method private byteArrayToQmiArray(S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[B)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation

    array-length v0, p2

    new-array v1, v0, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const-class v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, v1, v2, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;S)V

    return-object v0

    :cond_0
    new-instance v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aget-byte v3, p2, v0

    invoke-direct {v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "0123456789abcdef"

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0123456789abcdef"

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .locals 2

    const-class v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    if-eqz v0, :cond_0

    :goto_0
    sget v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Singleton Instance of Embms created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    monitor-exit v1

    throw v0
.end method

.method private handleResponse(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v0, :cond_0

    :goto_0
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    sget-object v6, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " responseSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " successStatus="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "phoneId: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received unexpected msgId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput v5, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;

    invoke-direct {v2, p0, v4, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_2
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;

    invoke-direct {v2, p0, v4, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_3
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;

    invoke-direct {v2, p0, v4, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_4
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;

    invoke-direct {v2, p0, v4, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_5
    const/4 v0, 0x1

    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;

    invoke-direct {v2, p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0, v2, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_6
    if-eq v2, v9, :cond_2

    :cond_1
    new-instance v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;

    invoke-direct {v0, p0, v1, v2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V

    invoke-direct {p0, v9, v0, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :cond_2
    if-eqz v4, :cond_1

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error received in EMBMSHOOK_MSG_ID_GET_AVAILABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7
    const/4 v0, 0x5

    if-eq v2, v0, :cond_4

    :cond_3
    new-instance v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;

    invoke-direct {v0, p0, v1, v2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V

    invoke-direct {p0, v11, v0, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :cond_4
    if-eqz v4, :cond_3

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error received in EMBMSHOOK_MSG_ID_GET_ACTIVE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_8
    if-eq v2, v10, :cond_6

    :cond_5
    new-instance v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CoverageState;

    invoke-direct {v0, p0, v1, v2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CoverageState;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V

    invoke-direct {p0, v12, v0, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :cond_6
    if-eqz v4, :cond_5

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error received in EMBMSHOOK_MSG_ID_GET_COVERAGE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_9
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;

    invoke-direct {v2, p0, v4, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_a
    iput v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_b
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;

    invoke-direct {v2, p0, v4, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_c
    const/16 v0, 0x18

    if-eq v2, v0, :cond_8

    :cond_7
    const/16 v0, 0x9

    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;

    invoke-direct {v2, p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0, v2, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :cond_8
    if-eqz v4, :cond_7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error received in EMBMSHOOK_MSG_ID_GET_SIB16_COVERAGE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_d
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;

    invoke-direct {v2, p0, v4, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_e
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " deliverLogPacket response successStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_f
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " contentDescription response successStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_10
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;

    invoke-direct {v2, p0, v4, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_11
    const/16 v0, 0xa

    new-instance v3, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;

    invoke-direct {v3, p0, v1, v2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V

    invoke-direct {p0, v0, v3, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_12
    const/4 v0, 0x5

    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$OosState;

    invoke-direct {v2, p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$OosState;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0, v2, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_13
    const/4 v0, 0x6

    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;

    invoke-direct {v2, p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0, v2, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_14
    const/4 v0, 0x7

    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$RadioStateIndication;

    invoke-direct {v2, p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$RadioStateIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0, v2, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_15
    new-instance v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v10, v0, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_16
    const/16 v0, 0xb

    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;

    invoke-direct {v2, p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0, v2, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_17
    const/16 v0, 0xc

    new-instance v3, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EmbmsStatus;

    invoke-direct {v3, p0, v1, v2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EmbmsStatus;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;I)V

    invoke-direct {p0, v0, v3, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_18
    const/16 v0, 0xd

    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$RequestIndication;

    invoke-direct {v2, p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$RequestIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0, v2, v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_19
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getInterestedTmgiListResponse ack successStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_16
        :pswitch_10
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private intArrayToQmiArray(S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[I)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    :goto_0
    new-array v2, v0, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    :goto_1
    if-lt v1, v0, :cond_1

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const-class v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-direct {v0, v2, v1, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;S)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aget v4, p2, v1

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private intArrayToQmiArray(S[IS)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[IS)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    :goto_0
    new-array v2, v0, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    :goto_1
    if-lt v1, v0, :cond_1

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const-class v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-direct {v0, v2, v1, p1, p3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;SS)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aget v4, p2, v1

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private notifyUnsol(ILjava/lang/Object;I)V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/lang/Object;I)V

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notifying registrants type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private parseActiveTmgi(Ljava/nio/ByteBuffer;)[B
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    mul-int/lit8 v0, v4, 0x6

    new-array v5, v0, [B

    move v3, v1

    move v0, v1

    :goto_0
    if-lt v3, v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    move v2, v0

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private parseTmgi(Ljava/nio/ByteBuffer;)[B
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    mul-int/lit8 v0, v4, 0x6

    new-array v5, v0, [B

    move v3, v1

    move v0, v1

    :goto_0
    if-lt v3, v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    move v2, v0

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private tmgiListArrayToQmiArray(S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[B)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    :goto_0
    div-int/lit8 v3, v0, 0x6

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    new-array v4, v0, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_1

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const-class v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v2, 0x7

    invoke-direct {v0, v4, v1, p1, v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;SS)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v5, 0x6

    invoke-direct {v0, v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    aput-object v0, v4, v1

    mul-int/lit8 v0, v2, 0x6

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x6

    if-lt v0, v5, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aget-byte v6, p2, v0

    invoke-direct {v5, v6}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    aput-object v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public actDeactTmgi(IB[B[BI[I[ILandroid/os/Message;I)I
    .locals 10

    sget-object v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "actDeactTmgi called on PhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B[BI[I[I)V

    :try_start_0
    iget-object v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->getTypes()[S

    move-result-object v4

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    const/4 v2, 0x2

    const/16 v3, 0x11

    move-object v1, v6

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    sget-object v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "IOException occurred during activate-deactivate !!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public activateTmgi(IB[BI[I[ILandroid/os/Message;I)I
    .locals 9

    sget-object v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "activateTmgi called on PhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[BI[I[I)V

    :try_start_0
    iget-object v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->getTypes()[S

    move-result-object v4

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v1, v6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v1

    sget-object v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "IOException occurred during activate !!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public contentDescription(IB[BI[I[ILandroid/os/Message;I)I
    .locals 7

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contentDescription called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p5, :cond_2

    :cond_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contentDescription: either parameterCode or parameterValue is nullparameterCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameterValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array p5, v0, [I

    const/4 v0, 0x0

    new-array p6, v0, [I

    :goto_0
    array-length v0, p5

    if-eq p4, v0, :cond_3

    :cond_1
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contentDescription: Invalid input, numberOfParameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameterCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameterValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_2
    if-eqz p6, :cond_0

    goto :goto_0

    :cond_3
    array-length v0, p6

    if-ne p4, v0, :cond_1

    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_1

    mul-int/lit8 v2, p4, 0x2

    const/4 v0, 0x0

    new-array v5, v2, [I

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_4

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contentDescription: parameterArray: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B[I)V

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->getTypes()[S

    move-result-object v3

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x1d

    move-object v0, v5

    move-object v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during contentDescription !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_4
    aget v3, p5, v0

    aput v3, v5, v1

    add-int/lit8 v3, v1, 0x1

    aget v4, p6, v0

    aput v4, v5, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public deactivateTmgi(IB[BLandroid/os/Message;I)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivateTmgi called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I[BB)V

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/4 v2, 0x3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during deactivate !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public deliverLogPacket(II[BI)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deliverLogPacket called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;II[B)V

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x16

    const/4 v5, 0x0

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during deliver logPacket !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public disable(IBLandroid/os/Message;I)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disable called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB)V

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/4 v2, 0x1

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during disable !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public dispose()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispose mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "dispose(): Unregistering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->unregisterService(I)V

    invoke-static {p0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->unregisterOnReadyCb(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enable(ILandroid/os/Message;I)I
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during enable !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getActiveLogPacketIDs(I[ILandroid/os/Message;I)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveLogPacketIDs called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I[I)V

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x15

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during activate log packet ID\'s !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getActiveTMGIList(IBI)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveTMGIList called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB)V

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v5, 0x0

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getActiveTMGIList !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getAvailableTMGIList(IBI)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailableTMGIList called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB)V

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v5, 0x0

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getAvailableTMGIList !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getCoverageState(II)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCoverageState called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getActiveTMGIList !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getE911State(ILandroid/os/Message;I)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getE911State called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x1b

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getE911State !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getEmbmsStatus(II)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEmbmsStatus called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x21

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getEmbmsStatus !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getInterestedTMGIListResponse(IB[BILandroid/os/Message;)I
    .locals 7

    :try_start_0
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x23

    move-object v5, p5

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getInterestedTMGIListResponse !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getPLMNListRequest(ILandroid/os/Message;I)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPLMNListRequest called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x1f

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getPLMNListRequest !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getSib16CoverageStatus(Landroid/os/Message;I)I
    .locals 3

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSib16CoverageStatus called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SSLandroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getSIB16 !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getSignalStrength(ILandroid/os/Message;I)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSignalStrength called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x9

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during enable !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getTime(ILandroid/os/Message;I)I
    .locals 7

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTime called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x1a

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occurred during getTime !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected message received from QmiOemHook what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->handleResponse(Ljava/util/HashMap;)V

    return-void

    :cond_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Hashmap async userobj is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const/16 v1, 0x1001

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerForNotifications(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Adding a registrant"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTime(ZJJLandroid/os/Message;I)I
    .locals 8

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTime called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTime success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timeMseconds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;BJJ)V

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v1, 0x2

    const/16 v2, 0x17

    move-object v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException occured during setTime !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public unregisterForNotifications(Landroid/os/Handler;)V
    .locals 3

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Removing a registrant"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
