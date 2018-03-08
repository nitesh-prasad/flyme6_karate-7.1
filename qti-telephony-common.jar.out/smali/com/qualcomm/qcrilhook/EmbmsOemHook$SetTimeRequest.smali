.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetTimeRequest"
.end annotation


# instance fields
.field public sntpSuccess:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public timeMseconds:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

.field public timeStamp:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;BJJ)V
    .locals 1

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->sntpSuccess:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    invoke-direct {v0, p3, p4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->timeMseconds:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    invoke-direct {v0, p5, p6}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->timeStamp:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->sntpSuccess:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->timeMseconds:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->timeStamp:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short v2, v0, v1

    const/16 v1, 0x10

    aput-short v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x11

    aput-short v2, v0, v1

    return-object v0
.end method
