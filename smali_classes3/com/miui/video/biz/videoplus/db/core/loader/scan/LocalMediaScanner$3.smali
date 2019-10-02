.class Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;
.super Ljava/lang/Object;
.source "LocalMediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->loadFinished(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

.field final synthetic val$copyList:Ljava/util/List;

.field final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$errorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$copyList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->cancel()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$copyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$100(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$100(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$errorMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$copyList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;->loadFinish(ZLjava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$200(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$300(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$100(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$100(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$errorMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$copyList:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->val$errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;->loadFinish(ZLjava/util/List;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$3;->this$0:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->access$400(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$InnerHandler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method
