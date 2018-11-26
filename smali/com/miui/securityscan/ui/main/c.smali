.class public Lcom/miui/securityscan/ui/main/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private GY:I

.field private GZ:Lcom/miui/securityscan/ui/main/d;

.field private Ha:Landroid/graphics/LinearGradient;

.field private Hb:I

.field private Hc:I

.field private Hd:Landroid/graphics/Point;

.field private He:F

.field private Hf:J

.field private Hg:Z

.field private Hh:Lcom/miui/securityscan/ui/main/d;

.field private Hi:Landroid/graphics/LinearGradient;

.field final synthetic Hj:Lcom/miui/securityscan/ui/main/BallView;

.field private duration:J


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/main/BallView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/c;->Hj:Lcom/miui/securityscan/ui/main/BallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/BallView;->He(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/miui/securityscan/ui/main/c;->Hb:I

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/BallView;->He(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/miui/securityscan/ui/main/c;->Hc:I

    iput v1, p0, Lcom/miui/securityscan/ui/main/c;->GY:I

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/c;->Hg:Z

    return-void
.end method


# virtual methods
.method public Hi(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 8

    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/c;->Hn()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v7

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lt p3, v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/c;->GY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/securityscan/ui/main/c;->GY:I

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/c;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v7

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-int v2, v0

    iget v0, p0, Lcom/miui/securityscan/ui/main/c;->GY:I

    if-gt v0, v2, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/c;->Hg:Z

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/c;->Hj:Lcom/miui/securityscan/ui/main/BallView;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/BallView;->Hf(Lcom/miui/securityscan/ui/main/BallView;)Lcom/miui/securityscan/ui/main/BallView$ColorState;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/ui/main/BallView$ColorState;->GV:Lcom/miui/securityscan/ui/main/BallView$ColorState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/c;->Hj()Lcom/miui/securityscan/ui/main/d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/c;->Hk()Landroid/graphics/LinearGradient;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v1}, Lcom/miui/securityscan/ui/main/d;->HA()I

    move-result v0

    invoke-virtual {v1}, Lcom/miui/securityscan/ui/main/d;->HA()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/c;->Hj:Lcom/miui/securityscan/ui/main/BallView;

    iget v4, p0, Lcom/miui/securityscan/ui/main/c;->GY:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    int-to-float v5, v2

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/miui/securityscan/ui/main/BallView;->Hg(Lcom/miui/securityscan/ui/main/BallView;F)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/c;->Hl()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/c;->Hj:Lcom/miui/securityscan/ui/main/BallView;

    invoke-static {v3}, Lcom/miui/securityscan/ui/main/BallView;->He(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/c;->Hj:Lcom/miui/securityscan/ui/main/BallView;

    invoke-static {v3}, Lcom/miui/securityscan/ui/main/BallView;->He(Lcom/miui/securityscan/ui/main/BallView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/miui/securityscan/ui/main/c;->Hb:I

    int-to-float v3, v3

    int-to-float v1, v1

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/c;->Hj:Lcom/miui/securityscan/ui/main/BallView;

    iget v5, p0, Lcom/miui/securityscan/ui/main/c;->GY:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    int-to-float v6, v2

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/miui/securityscan/ui/main/BallView;->Hh(Lcom/miui/securityscan/ui/main/BallView;F)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    iget v3, p0, Lcom/miui/securityscan/ui/main/c;->Hc:I

    int-to-float v3, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/c;->Hj:Lcom/miui/securityscan/ui/main/BallView;

    iget v5, p0, Lcom/miui/securityscan/ui/main/c;->GY:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    int-to-float v2, v2

    div-float v2, v5, v2

    invoke-static {v4, v2}, Lcom/miui/securityscan/ui/main/BallView;->Hh(Lcom/miui/securityscan/ui/main/BallView;F)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/c;->Hm()F

    move-result v2

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/c;->Ho()Lcom/miui/securityscan/ui/main/d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/c;->Hp()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/c;->Hg:Z

    goto :goto_1
.end method

.method public Hj()Lcom/miui/securityscan/ui/main/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/c;->GZ:Lcom/miui/securityscan/ui/main/d;

    return-object v0
.end method

.method public Hk()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/c;->Ha:Landroid/graphics/LinearGradient;

    return-object v0
.end method

.method public Hl()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/c;->Hd:Landroid/graphics/Point;

    return-object v0
.end method

.method public Hm()F
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/ui/main/c;->He:F

    return v0
.end method

.method public Hn()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/ui/main/c;->Hf:J

    return-wide v0
.end method

.method public Ho()Lcom/miui/securityscan/ui/main/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/c;->Hh:Lcom/miui/securityscan/ui/main/d;

    return-object v0
.end method

.method public Hp()Landroid/graphics/LinearGradient;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/c;->Hi:Landroid/graphics/LinearGradient;

    return-object v0
.end method

.method public Hq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/c;->Hg:Z

    return v0
.end method

.method public Hr(Lcom/miui/securityscan/ui/main/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/c;->GZ:Lcom/miui/securityscan/ui/main/d;

    return-void
.end method

.method public Hs(Landroid/graphics/LinearGradient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/c;->Ha:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public Ht(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/c;->Hb:I

    return-void
.end method

.method public Hu(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/c;->Hc:I

    return-void
.end method

.method public Hv(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/c;->Hd:Landroid/graphics/Point;

    return-void
.end method

.method public Hw(F)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/c;->He:F

    return-void
.end method

.method public Hx(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/ui/main/c;->Hf:J

    return-void
.end method

.method public Hy(Lcom/miui/securityscan/ui/main/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/c;->Hh:Lcom/miui/securityscan/ui/main/d;

    return-void
.end method

.method public Hz(Landroid/graphics/LinearGradient;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/c;->Hi:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/ui/main/c;->duration:J

    return-wide v0
.end method

.method public setDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/ui/main/c;->duration:J

    return-void
.end method
