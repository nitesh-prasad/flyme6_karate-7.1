.class public Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;
.super Lcom/android/internal/telephony/dataconnection/ApnSetting;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    }
.end annotation


# instance fields
.field public profileId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApnProfileType()Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;->profileId:I

    return v0
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "QtiApnSetting"

    return-object v0
.end method
