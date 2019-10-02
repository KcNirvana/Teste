.class public Lcom/miui/video/service/share/ShareView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "ShareView.java"


# instance fields
.field private mLineIndicator:Lcom/miui/video/service/share/LineIndicator;

.field private mShareAdapter:Lcom/miui/video/service/share/ShareAdapter;

.field private vViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/service/R$layout;->ui_layout_share:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/share/ShareView;->inflateView(I)V

    sget v0, Lcom/miui/video/service/R$id;->v_viewPager:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/miui/video/service/share/ShareView;->vViewPager:Landroid/support/v4/view/ViewPager;

    sget v0, Lcom/miui/video/service/R$id;->v_indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/service/share/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/share/LineIndicator;

    iput-object v0, p0, Lcom/miui/video/service/share/ShareView;->mLineIndicator:Lcom/miui/video/service/share/LineIndicator;

    return-void
.end method

.method public setContentToShare(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    new-instance v1, Lcom/miui/video/service/share/ShareAdapter;

    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/service/share/ShareAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/miui/video/service/share/ShareView;->mShareAdapter:Lcom/miui/video/service/share/ShareAdapter;

    iget-object v3, v0, Lcom/miui/video/service/share/ShareView;->mShareAdapter:Lcom/miui/video/service/share/ShareAdapter;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/miui/video/service/share/ShareAdapter;->setContentToShare(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/video/service/share/ShareView;->vViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, v0, Lcom/miui/video/service/share/ShareView;->mShareAdapter:Lcom/miui/video/service/share/ShareAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, v0, Lcom/miui/video/service/share/ShareView;->mLineIndicator:Lcom/miui/video/service/share/LineIndicator;

    iget-object v2, v0, Lcom/miui/video/service/share/ShareView;->vViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/miui/video/service/share/LineIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v1, v0, Lcom/miui/video/service/share/ShareView;->mShareAdapter:Lcom/miui/video/service/share/ShareAdapter;

    invoke-virtual {v1}, Lcom/miui/video/service/share/ShareAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, v0, Lcom/miui/video/service/share/ShareView;->mLineIndicator:Lcom/miui/video/service/share/LineIndicator;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/video/service/share/LineIndicator;->setVisibility(I)V

    :cond_0
    return-void
.end method
