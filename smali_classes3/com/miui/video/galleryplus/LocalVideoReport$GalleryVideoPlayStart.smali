.class public Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayStart;
.super Lcom/miui/video/base/statistics/BaseStatistics;
.source "LocalVideoReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/LocalVideoReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryVideoPlayStart"
.end annotation


# static fields
.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final PLAY_EVENT:Ljava/lang/String; = "gallery_play_start"


# instance fields
.field private mLocation:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/statistics/BaseStatistics;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayStart;->mLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    const-string v1, "gallery_play_start"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "galleryplus_diversion"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setModule(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "location"

    iget-object v2, p0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayStart;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    return-object v0
.end method
