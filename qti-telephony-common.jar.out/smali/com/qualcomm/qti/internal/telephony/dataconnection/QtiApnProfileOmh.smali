.class public Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
.super Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    }
.end annotation


# static fields
.field private static final DATA_PROFILE_OMH_PRIORITY_HIGHEST:I = 0x0

.field private static final DATA_PROFILE_OMH_PRIORITY_LOWEST:I = 0xff


# instance fields
.field private mApnProfileModem:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

.field private mPriority:I

.field private mServiceTypeMasks:I


# direct methods
.method public constructor <init>(II)V
    .locals 29

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const/4 v14, 0x3

    const/4 v2, 0x0

    new-array v15, v2, [Ljava/lang/String;

    const-string/jumbo v16, "IP"

    const-string/jumbo v17, "IP"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string/jumbo v27, ""

    const-string/jumbo v28, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x0

    move-object/from16 v2, p0

    move/from16 v21, p1

    invoke-direct/range {v2 .. v28}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    return-void
.end method

.method private isValidPriority(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addServiceType(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;)V
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    invoke-virtual {p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->values()[Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->types:[Ljava/lang/String;

    return-void

    :cond_0
    aget-object v5, v3, v0

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public canHandleType(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mServiceTypeMasks:I

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getApnProfileTypeModem(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;->getid()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getApnProfileType()Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-object v0
.end method

.method public getApnProfileTypeModem()Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mApnProfileModem:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->profileId:I

    return v0
.end method

.method public isPriorityHigher(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isValidPriority(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    if-ge v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPriorityLower(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isValidPriority(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    if-le v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValidPriority()Z
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setApnProfileTypeModem(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mApnProfileModem:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh$ApnProfileTypeModem;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ApnProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->profileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
