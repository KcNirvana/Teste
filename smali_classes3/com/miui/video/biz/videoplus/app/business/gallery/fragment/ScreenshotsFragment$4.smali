.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;
.super Ljava/lang/Object;
.source "ScreenshotsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    const-string v0, "ScreenshotsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$102(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;I)I

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    const-string v0, "ScreenshotsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrolled: position =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  ,positionOffset = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  ,positionOffsetPixels = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const-string v0, "ScreenshotsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "channel_position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "tab_position"

    const-string v2, "ScreenshotsFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$102(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;I)I

    :cond_2
    return-void
.end method
