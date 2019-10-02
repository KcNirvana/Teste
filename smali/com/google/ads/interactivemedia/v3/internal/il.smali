.class public Lcom/google/ads/interactivemedia/v3/internal/il;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ji$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/il$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/jd;

.field private c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ju;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/jv;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/il$a;

.field private i:Lcom/google/ads/interactivemedia/v3/internal/jf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jf;->b()Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->a:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jf;->b()Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object p3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object p4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jf;->b()Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p5, "AdsManagerUi is used for an unsupported UI style: "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p4, p2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->i:Lcom/google/ads/interactivemedia/v3/internal/jf;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->b:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->f:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/il$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/il$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/il;Lcom/google/ads/interactivemedia/v3/internal/il$1;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->h:Lcom/google/ads/interactivemedia/v3/internal/il$a;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/il;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->i:Lcom/google/ads/interactivemedia/v3/internal/jf;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jf;->b()Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->a:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)Lcom/google/ads/interactivemedia/v3/internal/jt;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ju;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->b:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ju;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jt;Lcom/google/ads/interactivemedia/v3/internal/jd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->b:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->h:Lcom/google/ads/interactivemedia/v3/internal/il$a;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Lcom/google/ads/interactivemedia/v3/internal/ju$a;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jv;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->b:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jd;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->e:Lcom/google/ads/interactivemedia/v3/internal/jv;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->e:Lcom/google/ads/interactivemedia/v3/internal/jv;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jv;->a()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/il;)Lcom/google/ads/interactivemedia/v3/internal/jd;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->b:Lcom/google/ads/interactivemedia/v3/internal/jd;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ju;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->b:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->e:Lcom/google/ads/interactivemedia/v3/internal/jv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->e:Lcom/google/ads/interactivemedia/v3/internal/jv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jv;->b()V

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->d:Lcom/google/ads/interactivemedia/v3/internal/ju;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ju;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/il;->b()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->isLinear()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/il;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/il;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->e:Lcom/google/ads/interactivemedia/v3/internal/jv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->e:Lcom/google/ads/interactivemedia/v3/internal/jv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jv;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/il;->e:Lcom/google/ads/interactivemedia/v3/internal/jv;

    return-void
.end method
