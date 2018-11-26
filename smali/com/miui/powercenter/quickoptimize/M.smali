.class final Lcom/miui/powercenter/quickoptimize/M;
.super Lcom/miui/common/e/a;
.source ""


# instance fields
.field final synthetic aFh:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/M;->aFh:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Lcom/miui/common/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string/jumbo v0, "ScanResultFrame"

    const-string/jumbo v1, "animation header view end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/M;->aFh:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQo(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/M;->aFh:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQm(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Lcom/miui/powercenter/quickoptimize/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/e;->setItemEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/M;->aFh:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQt(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    return-void
.end method
