.class final Lcom/miui/securityscan/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic Nj:Lcom/miui/securityscan/a;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/d;->Nj:Lcom/miui/securityscan/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/d;->Nj:Lcom/miui/securityscan/a;

    iget-object v0, v0, Lcom/miui/securityscan/a;->Nh:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB(Lcom/miui/securityscan/scanner/OptimizeItem;I)V

    return-void
.end method
