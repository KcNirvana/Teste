.class final Lcom/miui/common/datamodel/E;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic aBn:Lcom/miui/common/datamodel/Advertisement;


# direct methods
.method constructor <init>(Lcom/miui/common/datamodel/Advertisement;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/E;->aBn:Lcom/miui/common/datamodel/Advertisement;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/common/datamodel/Advertisement;

    iget-object v1, p0, Lcom/miui/common/datamodel/E;->aBn:Lcom/miui/common/datamodel/Advertisement;

    const-string/jumbo v2, "VIEW"

    invoke-virtual {v1, v2, v0}, Lcom/miui/common/datamodel/Advertisement;->aKF(Ljava/lang/String;Lcom/miui/common/datamodel/Advertisement;)V

    return-void
.end method
