.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Imsp_user_uri_struct"
.end annotation


# instance fields
.field imsp_user_uri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;",
            ">;"
        }
    .end annotation
.end field

.field imsp_user_uri_len:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation
.end field

.field mCompleteLen:I

.field mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNum:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    iput v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mCompleteLen:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri_len:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mNum:I

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mContactList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mCompleteLen:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mCompleteLen:I

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri_len:Ljava/util/ArrayList;

    new-instance v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v4, v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri:Ljava/util/ArrayList;

    new-instance v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v3, v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getSize()I
    .locals 2

    iget v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mCompleteLen:I

    iget v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->getSize()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mNum:I

    if-lt v1, v0, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri_len:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mNum:I

    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "[Contact[%d]_%s]"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public toTlv(S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->getSize()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
