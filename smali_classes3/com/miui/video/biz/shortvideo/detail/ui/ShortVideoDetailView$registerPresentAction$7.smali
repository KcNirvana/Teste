.class final Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$7;
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
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
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
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u00082\u000e\u0010\t\u001a\n \u0004*\u0004\u0018\u00010\n0\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "data",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "viewObject",
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

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$7;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/content/Context;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    instance-of p1, p4, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$7;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    move-object p2, p4

    check-cast p2, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    invoke-static {p1, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->access$setVUIAutoPlayView$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;)V

    :cond_0
    instance-of p1, p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$7;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-static {p1, p3}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->access$setMAutoPlayEntity$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$7;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-static {p1, p3, p4}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->access$onAutoPlayNextQuery(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public bridge synthetic call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    check-cast p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$7;->call(Landroid/content/Context;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method
