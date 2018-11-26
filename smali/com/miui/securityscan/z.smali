.class final Lcom/miui/securityscan/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic NI:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v2, 0x1f4

    const v7, 0x7f0705fe

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Do:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->NT(Lcom/miui/securityscan/MainActivity;Lcom/miui/securityscan/scanner/CleanupButtonStatus;)Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nw(Lcom/miui/securityscan/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nw(Lcom/miui/securityscan/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->reset()V

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/CircleView;->Gu()V

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/securityscan/MainActivity;->LN:I

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/miui/securityscan/MainActivity;->Oa(Lcom/miui/securityscan/MainActivity;J)J

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/miui/securityscan/MainActivity;->NZ(Lcom/miui/securityscan/MainActivity;J)J

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    iget-object v1, v1, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v4, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {v4}, Lcom/miui/securityscan/MainActivity;->NJ(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/OverScrollLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v5}, Lcom/miui/securityscan/utils/h;->IS(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NM(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/utils/h;->IO(Landroid/view/View;)V

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3ef5c28f    # 0.48f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v6, v1, v4, v5, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {v0, v2, v3, v6}, Lcom/miui/securityscan/utils/h;->IT(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nz(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nx(Lcom/miui/securityscan/MainActivity;)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/securityscan/utils/h;->IU(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NP(Lcom/miui/securityscan/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v1, v7}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/securityscan/z;->NI:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v1, v7}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
