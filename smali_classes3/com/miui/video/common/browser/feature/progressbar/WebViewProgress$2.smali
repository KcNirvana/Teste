.class Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$2;
.super Ljava/lang/Object;
.source "WebViewProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

.field final synthetic val$newProgress:I


# direct methods
.method constructor <init>(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$2;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    iput p2, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$2;->val$newProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$2;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    invoke-static {v0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->access$000(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$2;->val$newProgress:I

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x28

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$2;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    invoke-static {v1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->access$100(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->setProgress(I)V

    :cond_0
    return-void
.end method
