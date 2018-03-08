.class public Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
        ">",
        "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;"
    }
.end annotation


# instance fields
.field private mArrayLength:S

.field private mNumOfElements:S

.field private mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private vLenSize:S


# direct methods
.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;S)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/Class",
            "<TT;>;S)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    array-length v0, p1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    int-to-short v0, p3

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;SS)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/Class",
            "<TT;>;SS)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    array-length v0, p1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    int-to-short v0, p3

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    int-to-short v0, p4

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;SLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;S",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    array-length v0, p1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    const/16 v0, 0xff

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    return-void

    :cond_0
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSize()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-lt v0, v2, :cond_0

    iget-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->getSize()I

    move-result v0

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    :goto_0
    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    move v0, v1

    :goto_2
    iget-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-lt v0, v1, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    div-int/2addr v0, v3

    int-to-short v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
