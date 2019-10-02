.class Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MomentGuideConditionReferee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;

    move-result-object p2

    const-string p3, "show_guide_view"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    const/16 p2, 0x14

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;->access$000(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;)Lcom/miui/video/framework/impl/IActionListener;

    move-result-object p1

    const-string p2, "action_show_guide_view"

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, p3}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;

    move-result-object p1

    const-string p2, "show_guide_view"

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
