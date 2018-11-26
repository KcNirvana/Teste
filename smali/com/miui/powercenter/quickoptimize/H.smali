.class final Lcom/miui/powercenter/quickoptimize/H;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic aFc:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/H;->aFc:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/H;->aFc:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQr(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    return-void
.end method
