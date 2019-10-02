.class Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;
.super Landroid/os/Handler;
.source "LocalMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# static fields
.field static final KEY_ERROR_MSG:Ljava/lang/String; = "exception_msg"

.field static final TYPE_IMAGE_LOAD_FINISHED:I = 0x2

.field static final TYPE_RESET:I = 0x3

.field static final TYPE_VIDEO_LOAD_FINISHED:I = 0x1


# instance fields
.field mScanner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;->mScanner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method getScanner()Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;->mScanner:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;->mScanner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;->getScanner()Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$600(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "exception_msg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :goto_1
    invoke-static {v0, v2, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$500(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;Ljava/util/List;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
