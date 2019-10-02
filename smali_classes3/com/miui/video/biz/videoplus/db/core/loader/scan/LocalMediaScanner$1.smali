.class Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$1;
.super Ljava/lang/Object;
.source "LocalMediaScanner.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->startVideoTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(ZLjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$1;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2, p3}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$000(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;IZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method
