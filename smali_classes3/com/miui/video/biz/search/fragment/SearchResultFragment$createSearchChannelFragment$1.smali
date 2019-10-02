.class public final Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;
.super Ljava/lang/Object;
.source "SearchResultFragment.kt"

# interfaces
.implements Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/fragment/SearchResultFragment;->createSearchChannelFragment(Ljava/lang/String;Lcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/biz/search/entities/SearchData;)Lcom/miui/video/common/library/base/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1",
        "Lcom/miui/video/biz/search/fragment/SearchResultChannelFragment$IChangeChannelListener;",
        "changeToChannel",
        "",
        "title",
        "",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeToChannel(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ltz v1, :cond_4

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getMFragments$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/common/library/base/BaseFragment;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/video/common/library/base/BaseFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchResultFragment$createSearchChannelFragment$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/miui/video/biz/search/fragment/SearchResultFragment;->access$getVIndicator$p(Lcom/miui/video/biz/search/fragment/SearchResultFragment;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setCurrentItem(I)V

    goto :goto_2

    :cond_3
    if-eq v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
