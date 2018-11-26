.class final Lcom/miui/securityscan/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/customview/b;


# instance fields
.field final synthetic Nm:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private OQ(F)V
    .locals 6

    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NB(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "slide_down"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kd(Ljava/lang/String;)V

    const-string/jumbo v0, "slide_down"

    invoke-static {v0}, Lcom/miui/securityscan/d/h;->LD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NE(Lcom/miui/securityscan/MainActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v2}, Lcom/miui/securityscan/MainActivity;->NE(Lcom/miui/securityscan/MainActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Ke(J)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/securityscan/MainActivity;->NZ(Lcom/miui/securityscan/MainActivity;J)J

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->NX(Lcom/miui/securityscan/MainActivity;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NB(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NE(Lcom/miui/securityscan/MainActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v2}, Lcom/miui/securityscan/MainActivity;->NE(Lcom/miui/securityscan/MainActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Kf(J)V

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/securityscan/MainActivity;->NZ(Lcom/miui/securityscan/MainActivity;J)J

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->NX(Lcom/miui/securityscan/MainActivity;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public ei(F)V
    .locals 6

    const v4, 0x358637bd    # 1.0E-6f

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    iget-boolean v0, v0, Lcom/miui/securityscan/MainActivity;->MB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    iget-object v3, v0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    cmpg-float v0, p1, v4

    if-gez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setClickable(Z)V

    :cond_0
    cmpg-float v0, p1, v4

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    iget-boolean v0, v0, Lcom/miui/securityscan/MainActivity;->Lv:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->LM:Lcom/miui/securityscan/cards/DataModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    iget-object v3, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    iget-object v3, v3, Lcom/miui/securityscan/MainActivity;->LM:Lcom/miui/securityscan/cards/DataModel;

    invoke-virtual {v3}, Lcom/miui/securityscan/cards/DataModel;->CS()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/securityscan/MainActivity;->Np(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    iput-boolean v1, v0, Lcom/miui/securityscan/MainActivity;->Lx:Z

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NM(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/utils/h;->IO(Landroid/view/View;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/securityscan/g;->OQ(F)V

    const/high16 v0, -0x3fe00000    # -2.5f

    mul-float/2addr v0, p1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NO(Lcom/miui/securityscan/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NO(Lcom/miui/securityscan/MainActivity;)Landroid/widget/Button;

    move-result-object v4

    cmpg-float v0, v3, v5

    if-gtz v0, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nt(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/gif/GifImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/common/customview/gif/GifImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Nt(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/gif/GifImageView;

    move-result-object v0

    cmpg-float v4, v3, v5

    if-gtz v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/miui/common/customview/gif/GifImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NN(Lcom/miui/securityscan/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NM(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NM(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->Ny(Lcom/miui/securityscan/MainActivity;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    neg-int v1, v1

    iget-object v3, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v3}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v3

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v4}, Lcom/miui/securityscan/MainActivity;->NF(Lcom/miui/securityscan/MainActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    :cond_3
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->NM(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    iput-boolean v2, v0, Lcom/miui/securityscan/MainActivity;->Lx:Z

    iget-object v0, p0, Lcom/miui/securityscan/g;->Nm:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->ND(Lcom/miui/securityscan/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/utils/h;->IO(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method
