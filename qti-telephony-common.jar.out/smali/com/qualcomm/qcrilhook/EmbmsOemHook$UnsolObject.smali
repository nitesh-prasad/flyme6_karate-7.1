.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnsolObject"
.end annotation


# instance fields
.field public obj:Ljava/lang/Object;

.field public phoneId:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public unsolId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;->unsolId:I

    iput-object p3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;->obj:Ljava/lang/Object;

    iput p4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;->phoneId:I

    return-void
.end method
