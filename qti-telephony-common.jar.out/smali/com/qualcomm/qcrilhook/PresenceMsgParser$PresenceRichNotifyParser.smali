.class Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PresenceRichNotifyParser"
.end annotation


# instance fields
.field private c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

.field private listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

.field private parsedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private respByteBuf:Ljava/nio/ByteBuffer;

.field private totalBytes:I


# direct methods
.method static synthetic -wrap0(Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseRichInfo()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->totalBytes:I

    return-void
.end method

.method private parseAudioCapability()V
    .locals 3

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseInteger()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;->values()[Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mAudioCapabilities:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parsing AudioCapabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v2, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mAudioCapabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseByte()I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v1, :cond_0

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method private parseContactUri()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mContactUri:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing Contact Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseDescription()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mDescription:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing Description = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseInteger()I
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v4, :cond_0

    new-array v2, v4, [B

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_1

    aget-byte v0, v2, v1

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseIsAudioSupported()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsAudioSupported:Z

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parsing isAudioSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-boolean v2, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsAudioSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseIsVideoSupported()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsVideoSupported:Z

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parsing isVideoSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-boolean v2, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsVideoSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseIsVolteContact()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsVolteContact:Z

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parsing IsVolteContact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-boolean v2, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsVolteContact:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseListContactUri()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;->mListContactUri:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ListContactUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseListFullState()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;->mListFullState:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ListFullState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseListInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListContactUri()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListName()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListVersion()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListFullState()V

    return-void
.end method

.method private parseListName()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;->mListName:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ListName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseListVersion()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseInteger()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;->mListVersion:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ListVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parsePresenceInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseContactUri()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseServiceDescriptions()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseServiceCapabilities()V

    return-void
.end method

.method private parsePresenceUserInfoWithTs()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsePresenceInfo()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseTimeStamp()V

    return-void
.end method

.method private parsePublishStatus()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseInteger()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mPublishStatus:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing PublishStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseResouceInstance()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceId()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceState()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceReason()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceCid()V

    return-void
.end method

.method private parseResourceCid()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseShort()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceCid:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ResourceCid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseResourceId()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceId:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ResourceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseResourceReason()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceReason:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ResourceReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseResourceState()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceState:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ResourceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseResourceUri()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceUri:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ResourceUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseRichInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsedContactList:Ljava/util/ArrayList;

    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListInfo()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseUserListInfo()V

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsedContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private parseServiceCapabilities()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseIsAudioSupported()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseAudioCapability()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseIsVideoSupported()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseVideoCapability()V

    return-void
.end method

.method private parseServiceDescriptions()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseDescription()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseVersion()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseServiceid()V

    return-void
.end method

.method private parseServiceid()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mServiceId:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing ServiceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseShort()I
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v4, :cond_0

    new-array v2, v4, [B

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_1

    aget-byte v0, v2, v1

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseString(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_0

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseTimeStamp()V
    .locals 3

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mTimeStamp:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parsing timeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v2, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseUserListInfo()V
    .locals 4

    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseUserListInfoLen()I

    move-result v1

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing numOfContacts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    invoke-direct {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    iput-object v3, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceUri()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseIsVolteContact()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsePublishStatus()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResouceInstance()V

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsePresenceUserInfoWithTs()V

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsedContactList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseVersion()V
    .locals 4

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mVersion:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing Version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseVideoCapability()V
    .locals 3

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseInteger()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;->values()[Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mVideoCapabilities:Ljava/lang/String;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parsing VideoCapabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v2, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mVideoCapabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public parseUserListInfoLen()I
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    return v0
.end method
