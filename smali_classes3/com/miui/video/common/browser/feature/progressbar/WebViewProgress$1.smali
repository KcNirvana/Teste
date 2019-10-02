.class Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$1;
.super Ljava/lang/Object;
.source "WebViewProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->finish()V
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

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$1;->this$0:Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->viewInvisible()V

    return-void
.end method
