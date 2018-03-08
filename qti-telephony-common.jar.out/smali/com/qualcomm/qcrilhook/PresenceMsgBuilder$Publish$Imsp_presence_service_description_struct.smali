.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Imsp_presence_service_description_struct"
.end annotation


# instance fields
.field mDescription:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

.field mService_id:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

.field mVer:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mDescription:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mVer:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mService_id:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mDescription:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mVer:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mService_id:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->getSize()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mDescription:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->getSize()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mDescription:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mVer:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->getSize()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mVer:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mService_id:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->getSize()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mService_id:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "[mDescription_%s],[mVer_%s], [mService_id_%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mDescription:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mVer:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->mService_id:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toString()Ljava/lang/String;

    move-result-object v3

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

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
