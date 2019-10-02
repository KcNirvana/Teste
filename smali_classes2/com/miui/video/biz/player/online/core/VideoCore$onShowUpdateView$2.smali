.class final Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->onShowUpdateView(ZLjava/lang/String;Ljava/lang/String;)V
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
.field final synthetic $targetVersionName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;->$targetVersionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/service/update/ui/UpdateDialog;->dismiss(Landroid/content/Context;)Z

    const-string p1, "on"

    const-string v0, "detail_page"

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;->$targetVersionName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/miui/video/service/update/UpgradeStatisticUtils;->clickUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/video/service/update/AppUpdateUtils;->startUpdate(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/ui/VideoLoadingView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$onShowUpdateView$2;->$targetVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/onlineplayer/ui/VideoLoadingView;->showUpdateView(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
