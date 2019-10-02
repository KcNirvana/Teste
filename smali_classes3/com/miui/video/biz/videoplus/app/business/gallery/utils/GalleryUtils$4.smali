.class final Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$4;
.super Ljava/lang/Object;
.source "GalleryUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->sortOtherFolderEntityList(Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getCreateTime()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils$4;->compare(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)I

    move-result p1

    return p1
.end method
