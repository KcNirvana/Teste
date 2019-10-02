.class public Lcom/miui/video/service/utils/VideoPosterHelper;
.super Ljava/lang/Object;
.source "VideoPosterHelper.java"


# static fields
.field private static volatile mInstance:Lcom/miui/video/service/utils/VideoPosterHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/service/utils/VideoPosterHelper;
    .locals 2

    sget-object v0, Lcom/miui/video/service/utils/VideoPosterHelper;->mInstance:Lcom/miui/video/service/utils/VideoPosterHelper;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/service/utils/VideoPosterHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/service/utils/VideoPosterHelper;->mInstance:Lcom/miui/video/service/utils/VideoPosterHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/service/utils/VideoPosterHelper;

    invoke-direct {v1}, Lcom/miui/video/service/utils/VideoPosterHelper;-><init>()V

    sput-object v1, Lcom/miui/video/service/utils/VideoPosterHelper;->mInstance:Lcom/miui/video/service/utils/VideoPosterHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/service/utils/VideoPosterHelper;->mInstance:Lcom/miui/video/service/utils/VideoPosterHelper;

    return-object v0
.end method

.method private loadLocalVideoThumbnail(Landroid/content/Context;Lcom/miui/video/base/database/VideoEntity;Landroid/widget/ImageView;I)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/service/utils/VideoPosterHelper;->loadThumbnailByMiCodec(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method

.method private loadThumbnailByMiCodec(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-static {p1}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->getInstance(Landroid/content/Context;)Lcom/miui/video/service/utils/ThumbnailTaskPool;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->pushBackTask(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method


# virtual methods
.method public loadPoster(Landroid/content/Context;Lcom/miui/video/framework/base/entity/BaseEntity;Landroid/widget/ImageView;I)V
    .locals 1

    instance-of v0, p2, Lcom/miui/video/base/database/VideoEntity;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/video/base/database/VideoEntity;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/service/utils/VideoPosterHelper;->loadLocalVideoThumbnail(Landroid/content/Context;Lcom/miui/video/base/database/VideoEntity;Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method
