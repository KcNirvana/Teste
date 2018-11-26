.class final Lcom/miui/powercenter/quickoptimize/N;
.super Lcom/miui/common/e/a;
.source ""


# instance fields
.field final synthetic aFi:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/N;->aFi:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Lcom/miui/common/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string/jumbo v0, "ScanResultFrame"

    const-string/jumbo v1, "animation content list end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/N;->aFi:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQq(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    return-void
.end method
