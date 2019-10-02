.class public Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPullBack;
.super Lcom/miui/video/base/statistics/BaseStatistics;
.source "LocalVideoReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/LocalVideoReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryVideoPullBack"
.end annotation


# static fields
.field private static final PULL_BACK_EVENT:Ljava/lang/String; = "gallery_pull_back"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/statistics/BaseStatistics;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 2

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    const-string v1, "gallery_pull_back"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "galleryplus_diversion"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setModule(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    return-object v0
.end method
