.class public Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "GalleryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GalleryFragment"


# instance fields
.field private defaultPosition:I

.field private mLastPageIndex:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

.field private mRootView:Landroid/view/View;

.field private mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;",
            ">;"
        }
    .end annotation
.end field

.field private vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

.field private vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->defaultPosition:I

    new-instance v0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mLastPageIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mLastPageIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)Lcom/miui/video/common/library/widget/viewpager/UIViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    return-object p0
.end method

.method private createChildFragment()V
    .locals 4

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->setFragment(Lcom/miui/video/framework/base/entity/PageEntity;Lcom/miui/video/framework/impl/IActionListener;)V

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;-><init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActivityListener;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->setData(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_tab_gallery:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->setFrom(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u89c6\u9891+\u76f8\u518c"

    return-object v0
.end method

.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_tool_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setFrom(Ljava/lang/String;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_viewpager:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "tab_position"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "GalleryFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "channel_position"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->defaultPosition:I

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->defaultPosition:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mLastPageIndex:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_more_black:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setMoreImageSrc(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_search_black:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setSearchViewImageSrc(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_history_black:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setHistoryViewImageSrc(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vToolBar:Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_more_close_black:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIToolBar;->setCloseImageSrc(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->createChildFragment()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mPagerAdapter:Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/uiadapter/FragmentPagerAdapter;->setData(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->vIndicator:Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->notifyDataSetChanged()V

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->defaultPosition:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->defaultPosition:I

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->defaultPosition:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mRootView:Landroid/view/View;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onStart()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    const-string v0, "com.miui.videoplus.ACTION_REFRESH"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onStop()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "channel_position"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    invoke-virtual {v2}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->getCurrentItem()I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string p2, "com.miui.videoplus.ACTION_REFRESH"

    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mUIViewPager:Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->getCurrentItem()I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/app/interfaces/IRecyclerEvent;->hasScrollToTop()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string p2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_gallery:I

    return v0
.end method
