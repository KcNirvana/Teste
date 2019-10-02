.class public Lcom/xiaomi/miglobaladsdk/b/b;
.super Ljava/lang/Object;
.source "NativeAdLoader.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/b/a;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/b/b$b;,
        Lcom/xiaomi/miglobaladsdk/b/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

.field private k:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

.field private n:Lcom/xiaomi/utils/l;

.field private o:Lcom/xiaomi/miglobaladsdk/b/b$a;

.field private p:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

.field private q:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

.field private final r:[Ljava/lang/String;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->b:I

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->c:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->d:I

    iput v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->n:Lcom/xiaomi/utils/l;

    iput-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->p:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    iput-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->q:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    iput-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->t:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/xiaomi/miglobaladsdk/b/b;->u:J

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/miglobaladsdk/b/b;->h:Ljava/lang/String;

    iput p5, p0, Lcom/xiaomi/miglobaladsdk/b/b;->a:I

    iput-object p6, p0, Lcom/xiaomi/miglobaladsdk/b/b;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->getAdKeyType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fb"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    aput-object p4, p1, v0

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/b/b;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->d:I

    return p1
.end method

.method private a(ILjava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "positionid"

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placementid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "load_size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "report_pkg_name"

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->h:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->getDefaultCacheTime()J

    move-result-wide p1

    const-wide/32 v1, 0x1b7740

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    const-string v3, "NativeAdLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default cache time to low: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " reset to 30min"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p1, v1

    :cond_0
    const-string v1, "cache_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "load_config_adapter"

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const-string p1, "cm_check_view"

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->getReportShowIgnoreView()Z

    move-result v1

    xor-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FILTER_ADMOB_INSTALL_AD"

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->isFilterAdmobInstallAd()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FILTER_ADMOB_CONTENT_AD"

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->isFilterAdmobContentAd()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "extra_object"

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->getExtraObject()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->isInstreamVideo()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->isBannerAd()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const-string p1, "ad_container_view"

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->getContainerView()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "container_width"

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->getContainerWidth()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "container_height"

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/AdLoadParams;->getContainerHeight()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "cm_check_view"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-object v0
.end method

.method private a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->l:Ljava/util/Map;

    const-string v1, "ad_type_name"

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/a;

    iget-object v4, p0, Lcom/xiaomi/miglobaladsdk/b/b;->l:Ljava/util/Map;

    move-object v5, p1

    check-cast v5, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    move-object v3, v0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/miglobaladsdk/nativead/a;-><init>(Ljava/util/Map;Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;)V

    iget p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->c:I

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setAdPriorityIndex(I)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->v:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->w:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    new-instance v2, Lcom/xiaomi/miglobaladsdk/report/a$a;

    invoke-direct {v2}, Lcom/xiaomi/miglobaladsdk/report/a$a;-><init>()V

    const-string v3, "DSP_LOAD"

    invoke-virtual {v2, v3}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaomi/miglobaladsdk/b/b;->i:Z

    invoke-virtual {v2, v3}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Z)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/b/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/miglobaladsdk/report/a$a;->d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/miglobaladsdk/report/a$a;->e(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/b/b;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/miglobaladsdk/report/a$a;->h(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaomi/miglobaladsdk/b/b;->u:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(J)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Ljava/lang/Long;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->i(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->b(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/miglobaladsdk/report/a$a;->c(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->f(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->g(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaomi/miglobaladsdk/b/b;->w:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/xiaomi/miglobaladsdk/report/a$a;->j(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p2

    invoke-direct {p0, p1, p4}, Lcom/xiaomi/miglobaladsdk/b/b;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->k(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a()Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;->report(Lcom/xiaomi/miglobaladsdk/report/a;)V

    return-void
.end method

.method private a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "NativeAdLoader"

    const-string p2, "isSameAd false,INativeAds = null"

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "NativeAdLoader"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is same ad: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->isTestAd()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private c(I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/b/b;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, p1, :cond_2

    const-string p1, "NativeAdLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "real to load "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fail, adLoad has cache , cache size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/miglobaladsdk/b/b$a;->a(Ljava/lang/String;Z)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->t:Z

    if-nez v0, :cond_3

    const-string p1, "NativeAdLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "real to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fail, mLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "NativeAdLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "real to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&load timeout is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/miglobaladsdk/b/b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->getDefaultLoadNum()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->e:I

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    array-length p1, p1

    if-le p1, v1, :cond_4

    const/4 v1, 0x2

    :cond_4
    iput v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->t:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->u:J

    const-string p1, "NativeAdLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "posid[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] ,load->mLoaderTimerOutTask= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->n:Lcom/xiaomi/utils/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->n:Lcom/xiaomi/utils/l;

    if-nez p1, :cond_5

    new-instance p1, Lcom/xiaomi/miglobaladsdk/b/b$b;

    invoke-direct {p1, p0}, Lcom/xiaomi/miglobaladsdk/b/b$b;-><init>(Lcom/xiaomi/miglobaladsdk/b/b;)V

    new-instance v0, Lcom/xiaomi/utils/l;

    const-string v1, "Loader_Timeout"

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/utils/l;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->n:Lcom/xiaomi/utils/l;

    const-string p1, "NativeAdLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load->timeout= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->n:Lcom/xiaomi/utils/l;

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaomi/utils/l;->a(I)V

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->g()V

    return-void

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssp adtype configured incorrectly"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/miglobaladsdk/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->hasExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private g()V
    .locals 3

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->d:I

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->b:I

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->r:[Ljava/lang/String;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->x:Ljava/lang/String;

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->b:I

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->e:I

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/miglobaladsdk/b/b;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->l:Ljava/util/Map;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-virtual {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->setNativeAdAdapterListener(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter$NativeAdapterListener;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->l:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->n:Lcom/xiaomi/utils/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->n:Lcom/xiaomi/utils/l;

    invoke-virtual {v0}, Lcom/xiaomi/utils/l;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->n:Lcom/xiaomi/utils/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/b/b;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/report/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x271b

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/report/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public a(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public a(ILjava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/b/b;->c(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-direct {p0, v2, p2}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->j:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->p:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->q:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->v:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/b/b;->w:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->i:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->c:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->t:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    iget v0, v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->adSize:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    iget v0, v0, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->adSize:I

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/b/b;->c(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaomi/miglobaladsdk/b/b;->c(I)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->m:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;->handleOnResume()V

    :cond_0
    return-void
.end method

.method public onAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->p:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->p:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;->onAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public onAdDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->q:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->q:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;->onAdDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    :cond_0
    return-void
.end method

.method public onAdapterFailed(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->d:I

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->t:Z

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->h()V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/xiaomi/miglobaladsdk/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdapterLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 3

    const-string v0, "NativeAdLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterLoaded->adTypeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->t:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->h()V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/miglobaladsdk/b/b$a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onAdapterLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->t:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/b/b;->b(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->h()V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/b/b;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/miglobaladsdk/b/b$a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onLoggingImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/b/b;->o:Lcom/xiaomi/miglobaladsdk/b/b$a;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/b/b$a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method
