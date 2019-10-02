.class final Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$mThisDismissClick$1;
.super Ljava/lang/Object;
.source "SeriesEpListPopup.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;-><init>(Landroid/content/Context;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
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
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$mThisDismissClick$1;->this$0:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$mThisDismissClick$1;->this$0:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$mThisDismissClick$1;->this$0:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->getMOnSideViewEventListener()Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$OnSideViewEventListener;->close()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup$mThisDismissClick$1;->this$0:Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;->dismiss()V

    :cond_1
    return-void
.end method
