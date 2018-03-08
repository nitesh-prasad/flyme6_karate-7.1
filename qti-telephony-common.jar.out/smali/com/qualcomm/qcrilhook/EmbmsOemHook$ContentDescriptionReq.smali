.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentDescriptionReq"
.end annotation


# instance fields
.field public callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field public parameterArray:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation
.end field

.field public traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B[I)V
    .locals 4

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v2, p2

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-static {p1, v1, p4}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap2(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v0, 0x2

    invoke-static {p1, v1, p5, v0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap4(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[IS)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->parameterArray:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->parameterArray:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short v2, v0, v1

    aput-short v3, v0, v2

    aput-short v4, v0, v3

    const/16 v1, 0x10

    aput-short v1, v0, v4

    return-object v0
.end method
