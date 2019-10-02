.class public Lcom/google/ads/interactivemedia/v3/internal/jd;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/je$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/jd$e;,
        Lcom/google/ads/interactivemedia/v3/internal/jd$b;,
        Lcom/google/ads/interactivemedia/v3/internal/jd$a;,
        Lcom/google/ads/interactivemedia/v3/internal/jd$d;,
        Lcom/google/ads/interactivemedia/v3/internal/jd$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/jd$d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/jd$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/jd$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/jd$e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/jo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/je;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/jf;

.field private k:Z

.field private final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/ads/interactivemedia/v3/internal/jc;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private o:Ljava/lang/String;

.field private p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->g:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->k:Z

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->l:Ljava/util/Queue;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->h:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/je;

    invoke-direct {p4, p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/je;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/je$a;)V

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->i:Lcom/google/ads/interactivemedia/v3/internal/je;

    invoke-virtual {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/jd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->h:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/iq;Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/iq;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/iq;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(JLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "webViewLoadingTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->csi:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-direct {p1, p2, v1, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    check-cast p4, Lcom/google/ads/interactivemedia/v3/internal/is;

    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/internal/is;->a()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->c:[I

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->type()Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Ljava/util/List;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p4, p3}, Lcom/google/ads/interactivemedia/v3/internal/is;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/jh;->b()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/jh;->a()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V
    .locals 4

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p2, "other"

    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->ln:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->n:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->m:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const-string p1, "SDK_LOG:"

    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->n:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->ln:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    sparse-switch p2, :sswitch_data_0

    const-string p2, "IMASDK"

    const-string v0, "Unrecognized log level: "

    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->ln:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_0
    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :sswitch_1
    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :sswitch_2
    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :sswitch_3
    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :sswitch_4
    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, "IMASDK"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Invalid logging message data: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->a:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    :try_start_0
    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adUiStyle:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adUiStyle:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :catch_0
    :cond_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jf;

    iget-wide v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adTimeUpdateMs:J

    invoke-direct {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jf;-><init>(JLcom/google/ads/interactivemedia/v3/internal/jc$a;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->j:Lcom/google/ads/interactivemedia/v3/internal/jf;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->k:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->m:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->d()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_4
        0x45 -> :sswitch_3
        0x49 -> :sswitch_2
        0x53 -> :sswitch_3
        0x56 -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V
    .locals 3

    const-string v0, "IMASDK"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal message type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " received for "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " channel"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Caused by: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/iq;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/jd$d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->f:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/jo;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v2, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/jo;->b(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Lcom/google/ads/interactivemedia/v3/impl/data/m;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->displayContainer:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_5

    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->companions:Ljava/util/Map;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->companions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Lcom/google/ads/interactivemedia/v3/internal/iq;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->companions:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Ljava/util/Map;)V

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string p3, "Display requested for invalid companion slot."

    invoke-interface {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->isRenderCompanions()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->companions:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/iq;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    invoke-direct {p0, v3, v4, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;)V

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string p3, "Display companions message requires companions in data."

    invoke-interface {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string p3, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received displayContainer message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for invalid session id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/jd$e;

    if-eqz p2, :cond_0

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->translation:Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd$e;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->i:Lcom/google/ads/interactivemedia/v3/internal/je;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->l:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/je;->a(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/jd$b;

    if-nez v1, :cond_0

    const-string p3, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received request message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for invalid session id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->errorCode:I

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->errorMessage:Ljava/lang/String;

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->innerError:Ljava/lang/String;

    invoke-direct {p0, v2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p2, p1, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->j:Lcom/google/ads/interactivemedia/v3/internal/jf;

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->streamId:Ljava/lang/String;

    iget-boolean v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->monitorAppLifecycle:Z

    invoke-interface {v1, p2, p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jf;Ljava/lang/String;Z)V

    const-string p1, "IMASDK"

    const-string p2, "Stream initialized with streamId: "

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->streamId:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    if-nez p3, :cond_2

    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object p3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v0, "adsLoaded message did not contain cue points."

    invoke-interface {v1, p2, p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->j:Lcom/google/ads/interactivemedia/v3/internal/jf;

    iget-object v4, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adCuePoints:Ljava/util/List;

    iget-object v5, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->internalCuePoints:Ljava/util/SortedSet;

    iget-boolean v6, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->monitorAppLifecycle:Z

    move-object v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/jd$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jf;Ljava/util/List;Ljava/util/SortedSet;Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/jo;

    if-nez v0, :cond_0

    const-string p3, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received videoDisplay message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for invalid session id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Lcom/google/ads/interactivemedia/v3/impl/data/m;)Z

    return-void
.end method

.method private f(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V
    .locals 12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/jd$d;

    if-nez v0, :cond_0

    const-string p3, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received manager message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for invalid session id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adData:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adData:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    goto/16 :goto_2

    :pswitch_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    new-instance p2, Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->c:Ljava/util/Map;

    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->c:Ljava/util/Map;

    const-string v1, "adBreakTime"

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adBreakTime:Ljava/lang/String;

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ig;

    iget-wide v4, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->currentTime:D

    iget-wide v6, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->duration:D

    iget v8, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adPosition:I

    iget v9, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->totalAds:I

    iget-wide v10, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->adBreakDuration:D

    move-object v3, p2

    invoke-direct/range {v3 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/ig;-><init>(DDIID)V

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->e:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_4
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->clickThroughUrl:Ljava/lang/String;

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->f:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_5
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->getFocusSkipButtonWhenAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_8
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_9
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_a
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_b
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_c
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_d
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_e
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto/16 :goto_2

    :pswitch_f
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->d:Ljava/util/List;

    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->cuepoints:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/impl/data/k;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->d:Ljava/util/List;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/iw;

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->start()D

    move-result-wide v3

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->end()D

    move-result-wide v5

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/k;->played()Z

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/iw;-><init>(DDZ)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto :goto_2

    :pswitch_10
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto :goto_2

    :pswitch_11
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto :goto_2

    :pswitch_12
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto :goto_2

    :pswitch_13
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto :goto_2

    :pswitch_14
    if-eqz v2, :cond_3

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    goto :goto_2

    :cond_3
    const-string p1, "IMASDK"

    const-string p2, "Ad loaded message requires adData"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string p3, "Ad loaded message did not contain adData."

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_15
    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->errorCode:I

    iget-object v1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->errorMessage:Ljava/lang/String;

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->innerError:Ljava/lang/String;

    invoke-direct {p0, v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd$c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->logData:Lcom/google/ads/interactivemedia/v3/impl/data/m$a;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/m$a;->constructMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$d;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    :cond_5
    :goto_2
    :pswitch_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private g(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/jd$a;

    if-nez v0, :cond_1

    const-string p3, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received monitor message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for invalid session id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string p3, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received monitor message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for session id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with no data"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v1

    aget p2, p2, v1

    packed-switch p2, :pswitch_data_0

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    goto :goto_0

    :pswitch_0
    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->queryId:Ljava/lang/String;

    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->eventId:Ljava/lang/String;

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->vastEvent:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/jd$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->queryId:Ljava/lang/String;

    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/m;->eventId:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/jd$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Landroid/net/Uri;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "sdk_version"

    const-string v1, "a.3.9.0"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "hl"

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "omv"

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/jh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "omvx"

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getEnableOmidExperimentally()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "wvr"

    const-string v0, "2"

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "app"

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ga;

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/ga;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ko;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ko;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ga;->a(Lcom/google/ads/interactivemedia/v3/internal/gq;)Lcom/google/ads/interactivemedia/v3/internal/ga;

    move-result-object p2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kn;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/kn;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ga;->a(Lcom/google/ads/interactivemedia/v3/internal/fv;)Lcom/google/ads/interactivemedia/v3/internal/ga;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ga;->a()Lcom/google/ads/interactivemedia/v3/internal/fz;

    move-result-object p2

    const-string v0, "tcnfp"

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fz;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Ljava/util/List;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/jb;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/jb;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/jb;->a()V

    return-object v6
.end method

.method protected a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/it;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->m:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->i:Lcom/google/ads/interactivemedia/v3/internal/je;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/je;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->p:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->g:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jc;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/m;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;->b()Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    move-result-object v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;->a()Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string v0, "IMASDK"

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;->a()Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message channel: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->c(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->d(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->e(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->g(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->f(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/m;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jd$a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jd$b;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jd$d;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jd$e;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->e:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jo;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kw;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/kw;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "companionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->displayContainer:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->companionView:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-direct {p1, v1, v2, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    :cond_0
    return-void
.end method

.method public b()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->i:Lcom/google/ads/interactivemedia/v3/internal/je;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/je;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->d()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/google/ads/interactivemedia/v3/internal/jf;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->j:Lcom/google/ads/interactivemedia/v3/internal/jf;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jd$1;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jd;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->n:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jw;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->focusSkipButton:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    :cond_0
    return-void
.end method
