.class Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$MyFileObserver;
.super Landroid/os/FileObserver;
.source "FileDeleteWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFileObserver"
.end annotation


# instance fields
.field protected mDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$MyFileObserver;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$MyFileObserver;->mDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$MyFileObserver;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher$MyFileObserver;->mDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
