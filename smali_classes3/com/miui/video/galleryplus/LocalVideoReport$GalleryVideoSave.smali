.class public Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;
.super Lcom/miui/video/base/statistics/BaseStatistics;
.source "LocalVideoReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/LocalVideoReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryVideoSave"
.end annotation


# static fields
.field public static final FAILURE:Ljava/lang/String; = "failure"

.field private static final GALLERY_VIDEO_SAVE:Ljava/lang/String; = "gallery_save_edit"

.field private static final IS_SUCCESS:Ljava/lang/String; = "is_success"

.field private static final MUSIC:Ljava/lang/String; = "music"

.field public static final SLOW_EDIT:Ljava/lang/String; = "slow_edit"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final SUPER_SLOW_EDIT:Ljava/lang/String; = "super_slow_edit"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mIsSuccess:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/statistics/BaseStatistics;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;->mIsSuccess:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity()Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    const-string v1, "gallery_save_edit"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "galleryplus_diversion"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setModule(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "music"

    iget-object v2, p0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "is_success"

    iget-object v2, p0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;->mIsSuccess:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    return-object v0
.end method
