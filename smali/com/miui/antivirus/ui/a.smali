.class Lcom/miui/antivirus/ui/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private apq:J

.field private apr:I

.field private aps:Landroid/graphics/Paint;

.field private apt:J

.field final synthetic apu:Lcom/miui/antivirus/ui/LineAnimationView;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/ui/LineAnimationView;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/antivirus/ui/a;->apu:Lcom/miui/antivirus/ui/LineAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/a;->aps:Landroid/graphics/Paint;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/antivirus/ui/a;->apt:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/miui/antivirus/ui/a;->apq:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/ui/LineAnimationView;Lcom/miui/antivirus/ui/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/a;-><init>(Lcom/miui/antivirus/ui/LineAnimationView;)V

    return-void
.end method

.method private avO(J)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-wide v0, p0, Lcom/miui/antivirus/ui/a;->apt:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/antivirus/ui/a;->apt:J

    iget-wide v0, p0, Lcom/miui/antivirus/ui/a;->apt:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/miui/antivirus/ui/a;->apq:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v4, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/ui/a;->avM(I)V

    return-void
.end method

.method static synthetic avP(Lcom/miui/antivirus/ui/a;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/a;->avO(J)V

    return-void
.end method


# virtual methods
.method public avK(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->aps:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/antivirus/ui/a;->apr:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->apu:Lcom/miui/antivirus/ui/LineAnimationView;

    invoke-static {v0}, Lcom/miui/antivirus/ui/LineAnimationView;->avJ(Lcom/miui/antivirus/ui/LineAnimationView;)I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/antivirus/ui/a;->apr:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/antivirus/ui/a;->aps:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public avL()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/ui/a;->apr:I

    return v0
.end method

.method public avM(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->aps:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public avN(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/ui/a;->apr:I

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/antivirus/ui/a;->apt:J

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->aps:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/a;->aps:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
