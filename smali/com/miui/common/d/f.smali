.class public Lcom/miui/common/d/f;
.super Landroid/os/Handler;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public aLg(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/d/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/d/f;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public aLh(ILjava/lang/Object;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/d/f;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p3

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/common/d/f;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
