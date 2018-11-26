.class Lcom/miui/securityscan/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic Nh:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/a;->Nh:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/a;->Nh:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HC(Lcom/miui/securityscan/scanner/OptimizeItem;)V

    sget-object v0, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    iget-object v1, p0, Lcom/miui/securityscan/a;->Nh:Lcom/miui/securityscan/MainActivity;

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-static {v1, v2}, Lcom/miui/securityscan/utils/o;->JO(Landroid/content/Context;Lcom/miui/securityscan/scanner/OptimizeItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->DN(Ljava/lang/String;)V

    const-string/jumbo v0, "com.miui.securityscan.MainActivity"

    const-string/jumbo v1, "ClearAccelerationListener  onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/a;->Nh:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nc()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x64

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/securityscan/d;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/d;-><init>(Lcom/miui/securityscan/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
