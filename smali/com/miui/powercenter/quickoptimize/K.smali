.class final Lcom/miui/powercenter/quickoptimize/K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aFf:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/K;->aFf:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/K;->aFf:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQl(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/K;->aFf:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQs(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;)V

    return-void
.end method
