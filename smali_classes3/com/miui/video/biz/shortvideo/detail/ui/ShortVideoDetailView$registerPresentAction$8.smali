.class final Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$8;
.super Ljava/lang/Object;
.source "ShortVideoDetailView.kt"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->registerPresentAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/video/common/feed/architeture/action/ActionListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u00082\u000e\u0010\t\u001a\n \u0004*\u0004\u0018\u00010\n0\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "",
        "<anonymous parameter 3>",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "call"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$8;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$8;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-virtual {p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$8;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-static {p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->access$getMMediaData$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object p2, p2, Lcom/miui/video/base/model/MediaData$Media;->author_info:Lcom/miui/video/base/model/MediaData$AuthorInfo;

    iget-object p2, p2, Lcom/miui/video/base/model/MediaData$AuthorInfo;->author_id:Ljava/lang/String;

    const-string p3, "show_video_detail"

    invoke-static {p1, p2, p3}, Lcom/miui/video/base/routers/pgc/PgcUtil;->openAuthorDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
