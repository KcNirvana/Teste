.class public Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;
.super Ljava/lang/Object;
.source "MomentGuideConditionReferee.java"


# instance fields
.field private mListener:Lcom/miui/video/framework/impl/IActionListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/miui/video/framework/impl/IActionListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;

    move-result-object v0

    const-string v1, "show_guide_view"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentSPHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;)Lcom/miui/video/framework/impl/IActionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentGuideConditionReferee;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
