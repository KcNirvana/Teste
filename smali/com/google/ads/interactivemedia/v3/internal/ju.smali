.class public Lcom/google/ads/interactivemedia/v3/internal/ju;
.super Landroid/widget/RelativeLayout;
.source "IMASDK"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/ads/interactivemedia/v3/internal/jd$e;
.implements Lcom/google/ads/interactivemedia/v3/internal/ji$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/ju$b;,
        Lcom/google/ads/interactivemedia/v3/internal/ju$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ju$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:F

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/jd;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/jr;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/jt;

.field private l:Lcom/google/ads/interactivemedia/v3/internal/jq;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;Lcom/google/ads/interactivemedia/v3/internal/jd;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ju;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;Lcom/google/ads/interactivemedia/v3/internal/jd;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jq;Lcom/google/ads/interactivemedia/v3/internal/jr;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;Lcom/google/ads/interactivemedia/v3/internal/jd;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jq;Lcom/google/ads/interactivemedia/v3/internal/jr;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->f:Z

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->e:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->k:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->l:Lcom/google/ads/interactivemedia/v3/internal/jq;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->j:Lcom/google/ads/interactivemedia/v3/internal/jr;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ju;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->c:F

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->d(Landroid/content/Context;)V

    iget-boolean p2, p2, Lcom/google/ads/interactivemedia/v3/internal/jt;->b:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->c(Landroid/content/Context;)V

    :cond_0
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->f:Z

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ju;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->b:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->l:Lcom/google/ads/interactivemedia/v3/internal/jq;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jq;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->l:Lcom/google/ads/interactivemedia/v3/internal/jq;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->h:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u00bb"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jq;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->l:Lcom/google/ads/interactivemedia/v3/internal/jq;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jq;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->l:Lcom/google/ads/interactivemedia/v3/internal/jq;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jq;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->j:Lcom/google/ads/interactivemedia/v3/internal/jr;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->k:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->r:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->c:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/js;->a(IF)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->k:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/jt;->s:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->c:F

    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/js;->a(IF)I

    move-result p1

    invoke-virtual {v0, v2, v2, v2, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ju;->addView(Landroid/view/View;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->b(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->l:Lcom/google/ads/interactivemedia/v3/internal/jq;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->l:Lcom/google/ads/interactivemedia/v3/internal/jq;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ju$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/ju$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ju;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jq;->a(Lcom/google/ads/interactivemedia/v3/internal/jq$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->k:Lcom/google/ads/interactivemedia/v3/internal/jt;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/jr;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->j:Lcom/google/ads/interactivemedia/v3/internal/jr;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .locals 6

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->m:I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->n:I

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->k:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->k:Lcom/google/ads/interactivemedia/v3/internal/jt;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jt;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ju;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->e:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->i18n:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->learnMore:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->b:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->i:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance p1, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "seconds"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->e:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->i18n:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->preSkipButton:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->a:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->i:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ju;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 10

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->g:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "minutes"

    float-to-int v6, v0

    div-int/lit8 v7, v6, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "seconds"

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "adPosition"

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "totalAds"

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->e:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->i18n:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->adRemainingTime:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->d:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    :cond_2
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->g:F

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->i:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->b:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    if-eq v0, v4, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result p1

    sub-float/2addr v0, p1

    cmpg-float p1, v0, v1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->e:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->i18n:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->skipButton:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "seconds"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->e:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->i18n:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->preSkipButton:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ju$2;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->j:Lcom/google/ads/interactivemedia/v3/internal/jr;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/jr;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->c:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->i:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/ju$a;

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/internal/ju$a;->b()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->j:Lcom/google/ads/interactivemedia/v3/internal/jr;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/jr;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ju;->b(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ju$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->f:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ju;->setVisibility(I)V

    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jq;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->k:Lcom/google/ads/interactivemedia/v3/internal/jt;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/jq;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->l:Lcom/google/ads/interactivemedia/v3/internal/jq;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->a:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->i:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->c:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ju;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ju$a;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ju$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
