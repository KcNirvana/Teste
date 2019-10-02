.class Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;

    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    invoke-direct {v3}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;-><init>()V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->getTitleLayoutType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->setTitleLayoutType(I)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->getProvider()Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->setLoader(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$2100(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->setUIRefreshListener(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$UIRefreshListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v2

    add-int v4, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$2200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$8;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$800(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->notifyDataSetChanged()V

    return-void
.end method
