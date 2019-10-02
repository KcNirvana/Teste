.class Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;
.super Ljava/lang/Object;
.source "FakeProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;


# direct methods
.method constructor <init>(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$000(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v1}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$100(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v1}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$200(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I

    move-result v1

    div-int v1, v0, v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    iget-object v4, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v4}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$100(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v4, v1

    double-to-int v1, v4

    invoke-static {v3, v1}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$102(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;I)I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$300(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$300(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$OnProgressChangedListener;

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v1}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$100(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$OnProgressChangedListener;->onProgressChanged(I)V

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$600(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v1}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$400(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-static {v2}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->access$500(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->finish()V

    return-void
.end method
