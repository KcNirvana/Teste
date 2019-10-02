.class Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;
.super Landroid/os/Handler;
.source "VideoChangeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->access$100(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;)V

    :goto_0
    return-void
.end method
