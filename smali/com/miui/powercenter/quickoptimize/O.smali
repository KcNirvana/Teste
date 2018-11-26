.class final Lcom/miui/powercenter/quickoptimize/O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic aFj:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

.field final synthetic aFk:Lcom/miui/powercenter/quickoptimize/v;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lcom/miui/powercenter/quickoptimize/v;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/O;->aFj:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/O;->aFk:Lcom/miui/powercenter/quickoptimize/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/O;->aFj:Lcom/miui/powercenter/quickoptimize/ScanResultFrame;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/O;->aFk:Lcom/miui/powercenter/quickoptimize/v;

    invoke-static {v0, v1}, Lcom/miui/powercenter/quickoptimize/ScanResultFrame;->aQp(Lcom/miui/powercenter/quickoptimize/ScanResultFrame;Lcom/miui/powercenter/quickoptimize/v;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
