.class Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$1;
.super Landroid/database/ContentObserver;
.source "VideoChangeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->access$000(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;)Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->access$000(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;)Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
