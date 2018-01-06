.class public Lcom/miui/weather2/view/RadarCloudImageContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/weather2/tools/s$a;


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Lcom/miui/weather2/tools/au;

.field private f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/RadarCloudImageData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    return-void
.end method

.method private a(DD)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/RadarCloudImageData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/RadarCloudImageData;->getLeftBottomLatitude()D

    move-result-wide v4

    cmpg-double v4, v4, p1

    if-gtz v4, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/RadarCloudImageData;->getRightTopLatitude()D

    move-result-wide v4

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/RadarCloudImageData;->getLeftBottomLongitude()D

    move-result-wide v4

    cmpg-double v4, v4, p3

    if-gtz v4, :cond_2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/RadarCloudImageData;->getRightTopLongitude()D

    move-result-wide v4

    cmpg-double v0, p3, v4

    if-gtz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private b(F)Z
    .locals 4

    const/4 v0, 0x1

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v1, -0x40800000    # -1.0f

    iget v2, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->b:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->b:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->b:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gtz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    const-string v1, "minute_rain_detail"

    iget-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    if-eqz v0, :cond_2

    const-string v0, "play_start"

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "play_pause"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->b()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900a7

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/RadarCloudImageData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RadarCloudImageData;->setCloudImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->c()V

    return-void
.end method

.method public a(DDF)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/weather2/view/RadarCloudImageContainer;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5}, Lcom/miui/weather2/view/RadarCloudImageContainer;->b(F)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/miui/weather2/model/t;->a(Landroid/content/Context;DDFLcom/miui/weather2/view/RadarCloudImageContainer;)V

    :cond_1
    iput p5, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->b:F

    return-void
.end method

.method a(F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x3f7ff972    # 0.9999f

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->a:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->a:I

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->e:Lcom/miui/weather2/tools/au;

    iget-object v2, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/RadarCloudImageData;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/tools/au;->a(Lcom/miui/weather2/structures/RadarCloudImageData;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/RadarCloudImageData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/RadarCloudImageData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/RadarCloudImageData;->getPointOfTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/RadarCloudImageData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/RadarCloudImageData;->getPointOfTime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(JJ)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/RadarCloudImageData;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/weather2/model/t;->a(Landroid/content/Context;Lcom/miui/weather2/structures/RadarCloudImageData;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/RadarCloudImageData;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/miui/weather2/model/t;->a(Landroid/content/Context;Lcom/miui/weather2/structures/RadarCloudImageData;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    iget-boolean v2, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->h:Z

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->a(ZZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-virtual {v0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->b()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->e:Lcom/miui/weather2/tools/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/au;->a(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->e:Lcom/miui/weather2/tools/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/au;->a(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->e:Lcom/miui/weather2/tools/au;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/au;->g()V

    const-string v0, "minute_rain_detail"

    const-string v1, "locate"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->d()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f000f -> :sswitch_0
        0x7f0f0010 -> :sswitch_1
        0x7f0f0011 -> :sswitch_2
        0x7f0f014c -> :sswitch_3
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    const v6, 0x7f02019c

    const v5, 0x7f02019b

    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0f000f

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/RadarCloudImageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0f0011

    invoke-virtual {p0, v2}, Lcom/miui/weather2/view/RadarCloudImageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0f014c

    invoke-virtual {p0, v3}, Lcom/miui/weather2/view/RadarCloudImageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0f014f

    invoke-virtual {p0, v4}, Lcom/miui/weather2/view/RadarCloudImageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f014d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->c:Landroid/widget/ImageView;

    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->d:Landroid/view/View;

    const v0, 0x7f0f014e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    iput-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->f:Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/view/RadarCloudImageProgressIndicator;->setRadarCloudImageContainer(Lcom/miui/weather2/view/RadarCloudImageContainer;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->d:Landroid/view/View;

    new-instance v1, Lcom/miui/weather2/view/n;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/n;-><init>(Lcom/miui/weather2/view/RadarCloudImageContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RadarCloudImageContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setAMapController(Lcom/miui/weather2/tools/au;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/RadarCloudImageContainer;->e:Lcom/miui/weather2/tools/au;

    return-void
.end method
