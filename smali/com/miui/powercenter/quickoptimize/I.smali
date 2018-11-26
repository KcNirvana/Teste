.class final Lcom/miui/powercenter/quickoptimize/I;
.super Lcom/miui/common/d/f;
.source ""


# instance fields
.field final synthetic aFd:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/I;->aFd:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Lcom/miui/common/d/f;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/d/f;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/I;->aFd:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQu(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
