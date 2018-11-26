.class final Lcom/miui/optimizemanage/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/customview/b;


# instance fields
.field final synthetic An:Lcom/miui/optimizemanage/d;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/m;->An:Lcom/miui/optimizemanage/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ei(F)V
    .locals 2

    const v0, -0x40666666    # -1.2f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/optimizemanage/m;->An:Lcom/miui/optimizemanage/d;

    invoke-static {v1}, Lcom/miui/optimizemanage/d;->Bj(Lcom/miui/optimizemanage/d;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/m;->An:Lcom/miui/optimizemanage/d;

    invoke-static {v0}, Lcom/miui/optimizemanage/d;->Bk(Lcom/miui/optimizemanage/d;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/miui/optimizemanage/c/a;->AC()V

    iget-object v0, p0, Lcom/miui/optimizemanage/m;->An:Lcom/miui/optimizemanage/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/d;->Bn(Lcom/miui/optimizemanage/d;Z)Z

    :cond_0
    return-void
.end method
