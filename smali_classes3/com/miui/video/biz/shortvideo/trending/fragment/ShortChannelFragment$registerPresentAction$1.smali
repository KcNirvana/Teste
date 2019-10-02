.class final Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$1;
.super Ljava/lang/Object;
.source "ShortChannelFragment.kt"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->registerPresentAction()V
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
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
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
        "position",
        "",
        "data",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "uiRecyclerBase",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/content/Context;ILcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 4

    instance-of p1, p4, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p4, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->itemView:Landroid/view/View;

    check-cast p4, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;

    invoke-virtual {p4}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->getStyle()I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-static {v3}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->access$getMActionWrapper$p(Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;)Lcom/miui/video/service/action/ContentActionWrapper;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/miui/video/service/action/ContentActionWrapper;)V

    check-cast p3, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    invoke-virtual {p4}, Lcom/miui/video/common/feed/ui/card/UICardSingleImageBig;->getMoreBtn()Landroid/widget/ImageButton;

    move-result-object p2

    const-string p3, "uiRecyclerBase.moreBtn"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->show(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$registerPresentAction$1;->call(Landroid/content/Context;ILcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method
