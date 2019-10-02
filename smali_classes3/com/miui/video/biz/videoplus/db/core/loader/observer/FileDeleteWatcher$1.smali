.class Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$1;
.super Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$MyFileObserver;
.source "FileDeleteWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;->getFileObserver(Ljava/lang/String;)Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$MyFileObserver;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$1;->mDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;->access$000(Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;ILjava/lang/String;)V

    return-void
.end method
