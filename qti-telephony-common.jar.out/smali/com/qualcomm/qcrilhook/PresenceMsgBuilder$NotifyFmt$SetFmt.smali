.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetFmt"
.end annotation


# static fields
.field public static final UPDATE_WITH_STRUCT_INFO_TYPE:S = 0x1s


# instance fields
.field mUpdate_with_struct_info:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(S)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;->mUpdate_with_struct_info:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NotifyFmt$SetFmt;->mUpdate_with_struct_info:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [S

    const/4 v1, 0x0

    aput-short v2, v0, v1

    return-object v0
.end method
