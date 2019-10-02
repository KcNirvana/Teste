.class Lcom/miui/video/service/language/LanguageFragment$2;
.super Ljava/lang/Object;
.source "LanguageFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/language/LanguageFragment;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2<",
        "Landroid/support/v7/widget/RecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/language/LanguageFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/service/language/LanguageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$2;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$2;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$400(Lcom/miui/video/service/language/LanguageFragment;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$2;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$100(Lcom/miui/video/service/language/LanguageFragment;)V

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$2;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$500(Lcom/miui/video/service/language/LanguageFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/language/LanguagePresenter;

    invoke-virtual {p1}, Lcom/miui/video/service/language/LanguagePresenter;->getLanguageList()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$2;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$300(Lcom/miui/video/service/language/LanguageFragment;)V

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$2;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$600(Lcom/miui/video/service/language/LanguageFragment;)Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerView;->onRefreshComplete()V

    :goto_0
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
