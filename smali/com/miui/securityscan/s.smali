.class final Lcom/miui/securityscan/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/customview/b;


# instance fields
.field final synthetic Ny:Lcom/miui/securityscan/r;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/r;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/s;->Ny:Lcom/miui/securityscan/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ei(F)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/securityscan/s;->Ny:Lcom/miui/securityscan/r;

    iget-object v0, v0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    iget v0, v0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/s;->Ny:Lcom/miui/securityscan/r;

    iget-object v0, v0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NA(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/securityscan/d/a;->Kj()V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/s;->Ny:Lcom/miui/securityscan/r;

    iget-object v0, v0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->NW(Lcom/miui/securityscan/MainActivity;Z)Z

    :goto_0
    const v0, -0x40666666    # -1.2f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/securityscan/s;->Ny:Lcom/miui/securityscan/r;

    iget-object v1, v1, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1}, Lcom/miui/securityscan/MainActivity;->NM(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/s;->Ny:Lcom/miui/securityscan/r;

    iget-object v0, v0, Lcom/miui/securityscan/r;->Nx:Lcom/miui/securityscan/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->NW(Lcom/miui/securityscan/MainActivity;Z)Z

    goto :goto_0
.end method
