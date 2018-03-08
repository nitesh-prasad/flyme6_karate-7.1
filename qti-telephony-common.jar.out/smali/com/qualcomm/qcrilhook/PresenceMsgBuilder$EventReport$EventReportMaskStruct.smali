.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventReportMaskStruct"
.end annotation


# instance fields
.field mMask:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->mMask:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->getSize()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->mMask:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "[mMask_%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->mMask:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTlv(S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
