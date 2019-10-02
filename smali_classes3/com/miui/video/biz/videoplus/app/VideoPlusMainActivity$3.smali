.class Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$002(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/widget/UITab;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTab()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setCurrentTab(I)V

    :cond_0
    instance-of v0, p1, Lcom/miui/video/biz/videoplus/app/widget/UITab;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$000(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordMainTabClickLocal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "FolderFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v4, "ScreenshotsFragment"

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getmViews()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getViewPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getmViews()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getViewPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->isScrollTop()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getmViews()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getViewPosition()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const-string v4, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {v2, v4, v3, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->isScrollTop()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "GalleryFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    if-eqz v0, :cond_b

    const-string v2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordMainTabClickLocal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "TimeFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    if-eqz v0, :cond_b

    const-string v2, "com.miui.videoplus.KEY_SCROLL_TO_TOP"

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$200(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordMainTabClickLocal(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getGalleryEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$300(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$400(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$500(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/impl/IUIListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$600(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_layout:I

    const-string v4, "ScreenshotsFragment"

    invoke-virtual {v1, v2, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "ScreenshotsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0, v3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$302(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0, v3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$402(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->newInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$700(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/impl/IUIListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->setActionListener(Lcom/miui/video/framework/impl/IUIListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$800(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$anim;->plus_anim_right_out:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_layout:I

    const-string v4, "FolderFragment"

    invoke-virtual {v1, v2, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "FolderFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0, v3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$302(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0, v3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$402(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordMainTabClickLocal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "ScreenshotsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenshotsFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0, v2}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$302(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0, v2}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$402(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z

    :cond_9
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FolderFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderFragment"

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0, v2}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$302(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0, v3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$402(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z

    :cond_a
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "TimeFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getCurrentState()Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$9;->$SwitchMap$com$miui$video$biz$videoplus$app$listener$AppBarLayoutStateListener$State:[I

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1000(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$900(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    :cond_b
    :goto_1
    const-string v0, "VideoPlusMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
