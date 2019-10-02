.class final Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1;
.super Ljava/lang/Object;
.source "VideoLoadingView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->showNetWorkView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;


# direct methods
.method constructor <init>(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1;->this$0:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1;->this$0:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->hideNetWorkView()V

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1;->this$0:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->show()V

    iget-object p1, p0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1;->this$0:Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    invoke-static {p1}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->access$getMParent$p(Lcom/miui/video/onlineplayer/ui/VideoLoadingView;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1$1;

    invoke-direct {v0, p0}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1$1;-><init>(Lcom/miui/video/onlineplayer/ui/VideoLoadingView$showNetWorkView$1;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
