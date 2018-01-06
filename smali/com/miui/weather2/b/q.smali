.class public Lcom/miui/weather2/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/b/q;->i:Landroid/graphics/Paint;

    const v0, 0x7f0a011f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/q;->a:F

    const v0, 0x7f0a01e5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/q;->b:F

    const v0, 0x7f0a01e7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/q;->c:F

    const v0, 0x7f0a0123

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/q;->e:F

    const v0, 0x7f0a01e6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/q;->d:F

    const v0, 0x7f0a0122

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/q;->g:F

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/q;->f:F

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/q;->h:F

    iget-object v0, p0, Lcom/miui/weather2/b/q;->i:Landroid/graphics/Paint;

    const v1, 0x7f0b008d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(II)[Lcom/miui/weather2/b/p;
    .locals 5

    const/16 v4, 0x96

    add-int v0, p1, p2

    new-array v1, v0, [Lcom/miui/weather2/b/p;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    new-instance v2, Lcom/miui/weather2/b/r;

    invoke-direct {v2}, Lcom/miui/weather2/b/r;-><init>()V

    invoke-virtual {v2, v4}, Lcom/miui/weather2/b/r;->a(I)V

    iget v3, p0, Lcom/miui/weather2/b/q;->a:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/r;->c(F)V

    iget v3, p0, Lcom/miui/weather2/b/q;->h:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/r;->a(F)V

    iget v3, p0, Lcom/miui/weather2/b/q;->f:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/r;->f(F)V

    iget v3, p0, Lcom/miui/weather2/b/q;->g:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/r;->e(F)V

    iget-object v3, p0, Lcom/miui/weather2/b/q;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/r;->a(Landroid/graphics/Paint;)V

    iget v3, p0, Lcom/miui/weather2/b/q;->e:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/r;->b(F)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/miui/weather2/b/s;

    invoke-direct {v2}, Lcom/miui/weather2/b/s;-><init>()V

    invoke-virtual {v2, v4}, Lcom/miui/weather2/b/s;->a(I)V

    iget v3, p0, Lcom/miui/weather2/b/q;->a:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/s;->c(F)V

    iget v3, p0, Lcom/miui/weather2/b/q;->b:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/s;->a(F)V

    iget-object v3, p0, Lcom/miui/weather2/b/q;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/s;->a(Landroid/graphics/Paint;)V

    iget v3, p0, Lcom/miui/weather2/b/q;->d:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/s;->e(F)V

    iget v3, p0, Lcom/miui/weather2/b/q;->c:F

    invoke-virtual {v2, v3}, Lcom/miui/weather2/b/s;->b(F)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(I)[Lcom/miui/weather2/b/p;
    .locals 6

    const/16 v5, 0x12c

    const/16 v4, 0x96

    const/16 v3, 0xfa

    const/16 v2, 0xc8

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, v1, v4}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v3}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1, v5}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x15e

    invoke-direct {p0, v1, v0}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x32

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v4, v1}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v3, v1}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, v3, v1}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, v5, v1}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x15e

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, v2, v2}, Lcom/miui/weather2/b/q;->a(II)[Lcom/miui/weather2/b/p;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
