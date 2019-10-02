.class Lcom/miui/video/localvideoplayer/VideoFrameService$1;
.super Lcom/miui/video/localvideoplayer/VideoFrameInterface$Stub;
.source "VideoFrameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/localvideoplayer/VideoFrameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;


# direct methods
.method constructor <init>(Lcom/miui/video/localvideoplayer/VideoFrameService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    invoke-direct {p0}, Lcom/miui/video/localvideoplayer/VideoFrameInterface$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$prepare$49(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->ensureRetriever(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setSurface$50(Ljava/lang/String;Landroid/view/Surface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->setSurface(Ljava/lang/String;Landroid/view/Surface;I)V

    return-void
.end method

.method static synthetic lambda$showPreviewFrameAtTime$48(Ljava/lang/String;Landroid/view/Surface;IJ)V
    .locals 6

    const-string v5, "from_gallery"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/video/galleryplus/galleryvideo/utils/PreviewFrameUtils;->showPreviewFrameAtTime(Ljava/lang/String;Landroid/view/Surface;IJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFrameList(Ljava/lang/String;II)Lcom/miui/video/localvideoplayer/FrameParams;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "VideoFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrameList: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/utils/SeekBarFrameUtils;->getSeekBarBitmapList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    invoke-static {v7, v6}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$200(Lcom/miui/video/localvideoplayer/VideoFrameService;Landroid/graphics/Bitmap;)[B

    move-result-object v7

    :try_start_0
    new-instance v8, Landroid/os/MemoryFile;

    const-string v9, "video_frame_list"

    array-length v7, v7

    mul-int v7, v7, v4

    invoke-direct {v8, v9, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    invoke-static {v10, v9}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$200(Lcom/miui/video/localvideoplayer/VideoFrameService;Landroid/graphics/Bitmap;)[B

    move-result-object v9

    array-length v10, v9

    invoke-virtual {v8, v9, v5, v7, v10}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    array-length v9, v9

    add-int/2addr v7, v9

    goto :goto_0

    :cond_1
    const-class v2, Landroid/os/MemoryFile;

    const-string v7, "getFileDescriptor"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;

    new-instance v5, Lcom/miui/video/localvideoplayer/FrameParams$Builder;

    invoke-direct {v5}, Lcom/miui/video/localvideoplayer/FrameParams$Builder;-><init>()V

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v7}, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/miui/video/localvideoplayer/FrameParams$Builder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->setHeight(I)Lcom/miui/video/localvideoplayer/FrameParams$Builder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->setWidth(I)Lcom/miui/video/localvideoplayer/FrameParams$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->setCount(I)Lcom/miui/video/localvideoplayer/FrameParams$Builder;

    move-result-object v4

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->setFileDescriptor(Landroid/os/ParcelFileDescriptor;)Lcom/miui/video/localvideoplayer/FrameParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->build()Lcom/miui/video/localvideoplayer/FrameParams;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    :goto_1
    const-string v3, "VideoFrameService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFrameList: url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " width="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cost="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    :goto_2
    return-object v3
.end method

.method public prepare(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "VideoFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    new-instance v3, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$DVNLFqHFKajcdJEs9Q6piVkXwjw;

    invoke-direct {v3, p1}, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$DVNLFqHFKajcdJEs9Q6piVkXwjw;-><init>(Ljava/lang/String;)V

    const-string v4, "TOKEN_PREPARE"

    invoke-static {v2, v3, v4}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$000(Lcom/miui/video/localvideoplayer/VideoFrameService;Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    invoke-static {v2}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$100(Lcom/miui/video/localvideoplayer/VideoFrameService;)V

    const-string v2, "VideoFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare: url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cost="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "VideoFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    sget-object v3, Lcom/miui/video/localvideoplayer/-$$Lambda$27tJzNEhL0ell2THIeoPKKg_cJg;->INSTANCE:Lcom/miui/video/localvideoplayer/-$$Lambda$27tJzNEhL0ell2THIeoPKKg_cJg;

    const-string v4, "TOKEN_RELEASE"

    invoke-static {v2, v3, v4}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$000(Lcom/miui/video/localvideoplayer/VideoFrameService;Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    invoke-static {v2}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$100(Lcom/miui/video/localvideoplayer/VideoFrameService;)V

    const-string v2, "VideoFrameService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release: url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cost="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSurface(Landroid/view/Surface;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "VideoFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface: surfaceToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    new-instance v3, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;

    invoke-direct {v3, p3, p1, p2}, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;-><init>(Ljava/lang/String;Landroid/view/Surface;I)V

    const-string p1, "TOKEN_SET_SURFACE"

    invoke-static {v2, v3, p1}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$000(Lcom/miui/video/localvideoplayer/VideoFrameService;Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    invoke-static {p1}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$100(Lcom/miui/video/localvideoplayer/VideoFrameService;)V

    const-string p1, "VideoFrameService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSurface: surfaceToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " url="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cost="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showPreviewFrameAtTime(Landroid/view/Surface;ILjava/lang/String;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "VideoFrameService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPreviewFrameAtTime: surfaceToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    new-instance v9, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;

    move-object v3, v9

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    move-wide v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;-><init>(Ljava/lang/String;Landroid/view/Surface;IJ)V

    const-string p1, "TOKEN_PREVIEW"

    invoke-static {v2, v9, p1}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$000(Lcom/miui/video/localvideoplayer/VideoFrameService;Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->this$0:Lcom/miui/video/localvideoplayer/VideoFrameService;

    invoke-static {p1}, Lcom/miui/video/localvideoplayer/VideoFrameService;->access$100(Lcom/miui/video/localvideoplayer/VideoFrameService;)V

    const-string p1, "VideoFrameService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPreviewFrameAtTime: surfaceToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " url="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " time="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " cost="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
