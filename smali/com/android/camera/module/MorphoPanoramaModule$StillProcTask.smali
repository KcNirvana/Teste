.class public Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;
.super Ljava/lang/Thread;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StillProcTask"
.end annotation


# instance fields
.field private mWeakRefModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/module/MorphoPanoramaModule;",
            ">;"
        }
    .end annotation
.end field

.field private shootCount:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->mWeakRefModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->mWeakRefModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/MorphoPanoramaModule;

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get8(Lcom/android/camera/module/MorphoPanoramaModule;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    sget-boolean v5, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v5, :cond_0

    const v5, 0x90f010b

    invoke-virtual {v2, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get15(Lcom/android/camera/module/MorphoPanoramaModule;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-static {v5, v6, v3}, Lcom/android/camera/storage/Storage;->saveMorphoPanoramaOriginalPic(Ljava/nio/ByteBuffer;ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get1()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": run attachStillImageExt() start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v5

    if-nez v5, :cond_4

    const/high16 v4, -0x40000000    # -2.0f

    :goto_1
    if-eqz v4, :cond_1

    iget-object v5, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "%s: attachStillImageExt() -> 0x%x"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v2, Lcom/android/camera/module/MorphoPanoramaModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v6, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;

    invoke-direct {v6, p0, v2}, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;-><init>(Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;Lcom/android/camera/module/MorphoPanoramaModule;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    if-nez v5, :cond_2

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachSetJpegForCopyingExif(Ljava/nio/ByteBuffer;)I

    :cond_2
    :goto_2
    iget v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->shootCount:I

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get5(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->-set1(Lcom/android/camera/module/MorphoPanoramaModule;I)I

    :cond_3
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "StillProcTask still running"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v7, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    iget-object v8, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": run attachStillImageRaw() start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get9(Lcom/android/camera/module/MorphoPanoramaModule;)Lcom/android/camera/panorama/MorphoPanoramaGP;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v7, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    iget-object v8, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/panorama/MorphoPanoramaGP;->attachStillImageRaw(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "%s:attachStillImageExt() -> 0x%x"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/MorphoPanoramaModule;->-get0()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get12(Lcom/android/camera/module/MorphoPanoramaModule;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    iget-object v5, v0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v5}, Lcom/android/camera/panorama/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get5(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Lcom/android/camera/module/MorphoPanoramaModule;->-set1(Lcom/android/camera/module/MorphoPanoramaModule;I)I

    :cond_7
    iget-object v5, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->mWeakRefModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/MorphoPanoramaModule;

    if-eqz v2, :cond_8

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get6(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v5

    invoke-static {v2}, Lcom/android/camera/module/MorphoPanoramaModule;->-get5(Lcom/android/camera/module/MorphoPanoramaModule;)I

    move-result v6

    if-gt v5, v6, :cond_6

    :cond_8
    return-void
.end method
