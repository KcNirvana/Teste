.class public Lcom/xiaomi/miglobaladsdk/nativead/a;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;
.source "NativeAd.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;",
        "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/miglobaladsdk/nativead/a;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field private final a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

.field private b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field private c:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

.field private d:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

.field private e:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

.field private f:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

.field private g:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;

.field private h:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;

.field private i:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;

.field private j:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

.field private k:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:J

.field private u:J

.field private v:J

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->z:Z

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/a$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/a$1;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/a;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->A:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    iput-object p3, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->c:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    iput-object p4, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->e:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    iput-object p5, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->j:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    const-string p3, "cache_time"

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    const-string p4, "cache_time"

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setCacheTime(J)V

    const-string p3, "cache_time"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setCacheTime(J)V

    :cond_0
    const-string p3, "positionid"

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "positionid"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/xiaomi/miglobaladsdk/nativead/a;->c(Ljava/lang/String;)V

    :cond_1
    const-string p3, "rcv_report_res"

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "rcv_report_res"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(I)V

    :cond_2
    const-string p3, "report_pkg_name"

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "report_pkg_name"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/xiaomi/miglobaladsdk/nativead/a;->d(Ljava/lang/String;)V

    :cond_3
    const-string p3, "placementid"

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "placementid"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/xiaomi/miglobaladsdk/nativead/a;->e(Ljava/lang/String;)V

    :cond_4
    const-string p3, "ad_type_name"

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "ad_type_name"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->q:Ljava/lang/String;

    :cond_5
    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setAdCoverImageUrl(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setAdIconUrl(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setAdSocialContext(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setAdCallToAction(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setAdBody(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdStarRating()D

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setAdStarRate(D)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->isDownLoadApp()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setIsDownloadApp(Z)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->isTestAd()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setIsTestAd(Z)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getExtPics()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setExtPics(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdWeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setAdWeight(I)V

    invoke-virtual {p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getDspWeight()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->setDspWeight(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a()V

    return-void
.end method

.method private a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/report/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setImpressionListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 6

    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/a$a;

    invoke-direct {v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->e(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->h(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->i(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->j(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->isTestAd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->k(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->v:J

    iget-wide v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->t:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->u:J

    iget-wide v4, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->t:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    long-to-float p2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(I)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    :cond_1
    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->n(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->o(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a()Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;->report(Lcom/xiaomi/miglobaladsdk/report/a;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/nativead/a;)Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    return-object p0
.end method

.method private b()V
    .locals 3

    const-string v0, "NativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordImpression() mTriggerId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDCId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->t:J

    const-string v0, "VIEW"

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    const-string v0, "CLICK"

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    const-string v0, "REWARDED_CALL"

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->v:J

    const-string v0, "VIDEO_FINISH"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->u:J

    const-string v0, "CLOSE"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdDismissedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private g()V
    .locals 3

    const-string v0, "DISLIKE"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/miglobaladsdk/nativead/a;)I
    .locals 1
    .param p1    # Lcom/xiaomi/miglobaladsdk/nativead/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->getAdPriorityIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->getAdPriorityIndex()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->l:I

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->j:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->j:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;->onAdDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;->onAdDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    :cond_1
    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->y:I

    const v2, 0x7849ec8a

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eq p2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    iget-boolean v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->z:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    if-nez v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->z:Z

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->w:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->x:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->g()V

    :cond_8
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->s:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->r:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->n:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/xiaomi/miglobaladsdk/nativead/a;

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/a;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->o:Ljava/lang/String;

    return-void
.end method

.method public dislikeAndReport(Landroid/content/Context;)V
    .locals 1

    const/16 v0, -0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->dislikeAndReport(Landroid/content/Context;I)V

    return-void
.end method

.method public dislikeAndReport(Landroid/content/Context;I)V
    .locals 3

    const/16 v0, -0x3e8

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->z:Z

    const-string p2, "com.miui.msa.global"

    invoke-static {p1, p2}, Lcom/miui/zeus/utils/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->y:I

    iget p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->y:I

    if-gez p2, :cond_0

    const/4 p1, -0x2

    invoke-virtual {p0, p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->A:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    const-string v0, "PackageName"

    const-string v1, "ConfigKey"

    const-string v2, "AdPassback"

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/xiaomi/ad/feedback/DislikeManagerV2;->showDislikeWindow(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->z:Z

    invoke-virtual {p0, p0, p2}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    :goto_0
    iput-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->p:Ljava/lang/String;

    return-void
.end method

.method public getAdObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAdPriorityIndex()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->m:I

    return v0
.end method

.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRawString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->getRawString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public hasExpired()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->hasExpired()Z

    move-result v0

    return v0
.end method

.method public isNativeAd()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->isNativeAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->c:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->c:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    invoke-interface {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;->onAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->d:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->d:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    invoke-interface {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;->onAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->c()V

    return-void
.end method

.method public onAdCompleted(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->h:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->h:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;

    invoke-interface {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;->onAdCompleted(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->e()V

    return-void
.end method

.method public onAdDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 0

    return-void
.end method

.method public onAdDismissed(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->i:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->i:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;

    invoke-interface {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;->onAdDismissed(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->f()V

    return-void
.end method

.method public onAdRewarded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->g:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->g:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;

    invoke-interface {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;->onAdRewarded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->d()V

    return-void
.end method

.method public onLoggingImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->e:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->e:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;->onLoggingImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->f:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->f:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;->onLoggingImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->b()V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/miglobaladsdk/nativead/a;->registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/List;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/List;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iput-object p3, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->mExtraReportParams:Ljava/util/Map;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0, p3}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setExtraReportParams(Ljava/util/Map;)V

    iget-object p3, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p3, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setImpressionListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setAdOnClickListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdRewardedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdCompletedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdDismissedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public registerViewForInteraction_withExtraReportParams(Landroid/view/View;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->mExtraReportParams:Ljava/util/Map;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0, p2}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setExtraReportParams(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p2, p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setImpressionListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setAdOnClickListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdRewardedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdCompletedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {p1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdDismissedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAdOnClickListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->d:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;

    return-void
.end method

.method public setAdPriorityIndex(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->m:I

    return-void
.end method

.method public setImpressionListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->f:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;

    return-void
.end method

.method public setOnAdCompletedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->h:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;

    return-void
.end method

.method public setOnAdDislikedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->k:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;

    return-void
.end method

.method public setOnAdDismissedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->i:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDismissedListener;

    return-void
.end method

.method public setOnAdRewardedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->g:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;

    return-void
.end method

.method public unregisterView()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->unregisterView()V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setImpressionListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$ImpressionListener;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setAdOnClickListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdRewardedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdRewardedListener;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;->setOnAdCompletedListener(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdCompletedListener;)V

    :cond_0
    return-void
.end method
