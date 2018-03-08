.class public Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "QtiServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiServiceStateTracker"


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method static synthetic -set0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRat:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->enableBackgroundData()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 27
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 28
    const-string/jumbo v1, "rac"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "rat"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mTac:I

    .line 36
    new-instance v1, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v1}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 37
    new-instance v1, Lcom/qti/internal/telephony/QtiPlmnOverride;

    invoke-direct {v1}, Lcom/qti/internal/telephony/QtiPlmnOverride;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    .line 38
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method private enableBackgroundData()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/net/ZeroBalanceHelper;

    invoke-direct {v0}, Landroid/net/ZeroBalanceHelper;-><init>()V

    .line 60
    .local v0, "helper":Landroid/net/ZeroBalanceHelper;
    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getFeatureConfigValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getBgDataProperty()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string/jumbo v1, "zerobalance"

    const-string/jumbo v2, "Enabling the background data on LAU/RAU"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Landroid/net/ZeroBalanceHelper;->setBgDataProperty(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method private setOperatorConsideredDomesticRoaming(Landroid/telephony/ServiceState;)V
    .locals 12
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "operatorNumeric":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 155
    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v7

    .line 158
    .local v7, "subId":I
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v9

    .line 159
    const v10, 0x1070054

    .line 158
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "numericArray":[Ljava/lang/String;
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v9

    .line 162
    const v10, 0x1070055

    .line 161
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "numericExceptionsArray":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v9, v4

    if-eqz v9, :cond_4

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "isDomestic":Z
    array-length v9, v4

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v3, v4, v8

    .line 168
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 169
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 170
    const/4 v1, 0x1

    .line 174
    .end local v3    # "numeric":Ljava/lang/String;
    :cond_2
    array-length v8, v5

    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "i":I
    array-length v2, v5

    .line 177
    .local v2, "length":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 178
    aget-object v8, v5, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 179
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 185
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_3
    if-nez v1, :cond_4

    .line 186
    invoke-virtual {p1, v11}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 152
    .end local v1    # "isDomestic":Z
    :cond_4
    return-void

    .line 167
    .restart local v1    # "isDomestic":Z
    .restart local v3    # "numeric":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "numeric":Ljava/lang/String;
    .restart local v0    # "i":I
    .restart local v2    # "length":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 12
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 136
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 137
    return-void

    .line 69
    :pswitch_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 70
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 71
    iget-object v7, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 72
    .local v7, "states":[Ljava/lang/String;
    const/4 v6, 0x4

    .line 73
    .local v6, "regState":I
    array-length v8, v7

    if-lez v8, :cond_0

    .line 75
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 80
    :cond_0
    :goto_0
    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    .line 81
    const/16 v8, 0xd

    if-ne v6, v8, :cond_3

    .line 82
    :cond_1
    array-length v8, v7

    const/16 v9, 0xe

    if-lt v8, v9, :cond_3

    .line 85
    const/16 v8, 0xd

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " Posting Managed roaming intent sub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 87
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "subscription"

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    return-void

    .line 76
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error parsing RegistrationState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    return-void

    .line 93
    :catch_1
    move-exception v3

    .line 94
    .local v3, "ex2":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error parsing regCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 95
    return-void

    .line 98
    .end local v3    # "ex2":Ljava/lang/NumberFormatException;
    :cond_3
    return-void

    .line 100
    .end local v6    # "regState":I
    .end local v7    # "states":[Ljava/lang/String;
    :cond_4
    return-void

    .line 102
    :pswitch_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 103
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 104
    iget-object v5, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    .line 105
    .local v5, "opNames":[Ljava/lang/String;
    if-eqz v5, :cond_8

    array-length v8, v5

    const/4 v9, 0x3

    if-lt v8, v9, :cond_8

    .line 107
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 108
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_1
    if-eqz v0, :cond_6

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 115
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v0, v0, v9}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 111
    :cond_5
    const/4 v0, 0x0

    .local v0, "brandOverride":Ljava/lang/String;
    goto :goto_1

    .line 118
    .end local v0    # "brandOverride":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Lcom/qti/internal/telephony/QtiPlmnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 119
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    .line 120
    .local v1, "configResourceUtil":Lcom/android/internal/telephony/ConfigResourceUtil;
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 121
    const-string/jumbo v9, "config_plmn_name_override_enabled"

    .line 120
    invoke-static {v8, v9}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 123
    const-string/jumbo v8, "EVENT_POLL_STATE_OPERATOR: use plmnOverride"

    invoke-virtual {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 124
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mQtiPlmnOverride:Lcom/qti/internal/telephony/QtiPlmnOverride;

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Lcom/qti/internal/telephony/QtiPlmnOverride;->getPlmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x2

    aget-object v11, v5, v11

    .line 124
    invoke-virtual {v8, v9, v10, v11}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 129
    .end local v1    # "configResourceUtil":Lcom/android/internal/telephony/ConfigResourceUtil;
    :cond_7
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 132
    :cond_8
    return-void

    .line 134
    .end local v5    # "opNames":[Ljava/lang/String;
    :cond_9
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected setRoamingType(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "currentServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "isVoiceInService":Z
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 144
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->setOperatorConsideredDomesticRoaming(Landroid/telephony/ServiceState;)V

    .line 141
    :cond_1
    return-void
.end method
