.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmhCallProfileCallback"
.end annotation


# instance fields
.field mAppMessage:Landroid/os/Message;

.field mModemApnType:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;ILandroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-direct {p0, p3}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mModemApnType:I

    return-void
.end method


# virtual methods
.method public onOemHookResponse([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "QCRIL_EVT_HOOK_GET_OMH_CALL_PROFILE failed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v1, "Getting fake omh profiles"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap3(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mModemApnType:I

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap0(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-static {v1, v0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "QtiRilInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOmhCallProfile: onOemHookResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[B)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-static {v1, v0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0
.end method
