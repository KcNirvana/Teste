.class Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$3;
.super Ljava/lang/Object;
.source "WebViewProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->viewInvisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;


# direct methods
.method constructor <init>(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$3;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$3;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->access$202(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;F)F

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$3;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    invoke-static {v0, v1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->access$302(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;F)F

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$3;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->setVisibility(I)V

    return-void
.end method
