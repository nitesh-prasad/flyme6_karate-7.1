.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Imsp_user_info_struct"
.end annotation


# instance fields
.field imsp_user_uri:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;

.field subscribe_user_list_len:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->subscribe_user_list_len:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->imsp_user_uri:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->subscribe_user_list_len:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->imsp_user_uri:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 2

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->getSize()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->subscribe_user_list_len:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->imsp_user_uri:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "[subscribe_user_list_len_%s], [imsp_user_uri=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->subscribe_user_list_len:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->imsp_user_uri:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_info_struct;->toByteArray()[B

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
