.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SigStrengthResponse"
.end annotation


# instance fields
.field public code:I

.field public esnr:[F

.field public mbsfnAreaId:[I

.field public snr:[F

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public tmgiPerMbsfn:[I

.field public tmgilist:[B

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->code:I

    iput v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->traceId:I

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->status:I

    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    if-eqz v0, :cond_5

    :goto_1
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    if-eqz v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    if-eqz v0, :cond_7

    :goto_3
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    if-eqz v0, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    if-eqz v0, :cond_9

    :goto_5
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SigStrengthResponse: Unexpected Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Invalid format of byte buffer received in SigStrengthResponse"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v3, v2, [F

    move v0, v1

    :goto_6
    if-lt v0, v2, :cond_1

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SNR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :sswitch_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v3, v2, [I

    move v0, v1

    :goto_7
    if-lt v0, v2, :cond_2

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MBSFN_Area_ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v3, v2, [F

    move v0, v1

    :goto_8
    if-lt v0, v2, :cond_3

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EXCESS SNR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :sswitch_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v3, v2, [I

    move v0, v1

    :goto_9
    if-lt v0, v2, :cond_4

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NUMBER OF TMGI PER MBSFN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :sswitch_4
    invoke-static {p1, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap0(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tmgiArray = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->code:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->traceId:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "traceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->traceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_5
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->snr:[F

    goto/16 :goto_1

    :cond_6
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->esnr:[F

    goto/16 :goto_2

    :cond_7
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgiPerMbsfn:[I

    goto/16 :goto_3

    :cond_8
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->mbsfnAreaId:[I

    goto/16 :goto_4

    :cond_9
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;->tmgilist:[B

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
        0x12 -> :sswitch_2
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch
.end method
