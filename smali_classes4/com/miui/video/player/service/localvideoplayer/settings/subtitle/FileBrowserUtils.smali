.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils;
.super Ljava/lang/Object;
.source "FileBrowserUtils.java"


# static fields
.field public static final TYPE_IS_DIR:I = 0x1

.field public static final TYPE_IS_SUB:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPath(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;-><init>()V

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v1, p2}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setTitle(Ljava/lang/String;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setType(I)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setPath(Ljava/lang/String;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static getCurrentFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-lez v1, :cond_3

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    new-instance v4, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    invoke-direct {v4}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;-><init>()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setPath(Ljava/lang/String;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setTitle(Ljava/lang/String;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setType(I)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleUtil;->isSubtitleFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setPath(Ljava/lang/String;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setTitle(Ljava/lang/String;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;->setType(I)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils;->sortFiles(Ljava/util/List;)V

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRootDirContent(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/miui/video/framework/utils/StorageUtils;->isExternalSdcardMounted(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0, v2}, Lcom/miui/video/framework/utils/StorageUtils;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/miui/video/framework/utils/StorageUtils;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$string;->lv_storage_internal_sdcard:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils;->addPath(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/miui/video/player/service/R$string;->lv_storage_external_sdcard:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils;->addPath(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lcom/miui/video/framework/utils/StorageUtils;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils;->getCurrentFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static sortFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserWrapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils$1;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
