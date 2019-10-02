.class public Lcom/miui/video/base/ad/mediation/utils/ReportUtils;
.super Ljava/lang/Object;
.source "ReportUtils.java"


# static fields
.field private static final EVENT_CLICK:Ljava/lang/String; = "CLICK"

.field private static final EVENT_FILL:Ljava/lang/String; = "FILL"

.field private static final EVENT_IMPRESSION:Ljava/lang/String; = "IMPRESSION"

.field private static final EVENT_PRE_FILL:Ljava/lang/String; = "PRE_FILL"

.field private static final EVENT_PV:Ljava/lang/String; = "PV"

.field private static final EVENT_VIDEO_COMPLETE:Ljava/lang/String; = "VIDEO_COMPLETE"

.field private static final TAG:Ljava/lang/String; = "Mediation-ReportUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildParam(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/ad/mediation/entity/MediationEntity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tagId"

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static buildParam(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tagId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static reportClick(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "ad_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getPageFlag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "item_type"

    const-string v3, "ad_big_card"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_id"

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    invoke-static {v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    :cond_1
    return-void
.end method

.method public static reportClose(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    const-string v2, "ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "ad_close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getPageFlag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "item_type"

    const-string v3, "ad_big_card"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_id"

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    invoke-static {v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    :cond_1
    return-void
.end method

.method public static reportImpression(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localIsReportImpression:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/video/base/common/statistics/XiaomiStatistics;->initialed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->localIsReportImpression:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "module"

    const-string v3, "ad"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    const-string v3, "ad_expose"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    invoke-virtual {p0}, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->getPageFlag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "item_type"

    const-string v4, "ad_big_card"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "item_id"

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v0, v3

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v0

    invoke-static {p0, v1, v2, v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    :cond_1
    return-void
.end method

.method public static reportPV(Lcom/miui/video/base/ad/mediation/entity/MediationEntity;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "Mediation-ReportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/utils/MediationLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/entity/MediationEntity;->tagId:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;->reportPV(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
