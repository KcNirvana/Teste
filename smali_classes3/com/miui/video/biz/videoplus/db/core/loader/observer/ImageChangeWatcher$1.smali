.class Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$1;
.super Landroid/database/ContentObserver;
.source "ImageChangeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->access$100(Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;)Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$1$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$1$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$1;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
