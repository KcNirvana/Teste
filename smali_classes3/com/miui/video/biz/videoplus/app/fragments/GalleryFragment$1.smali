.class Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$200(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)Lcom/miui/video/common/library/widget/viewpager/UIViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/viewpager/UIViewPager;->getCurrentItem()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$002(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;I)I

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)I

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

    const-string v2, "GalleryFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$100(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$100(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$100(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$000(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$100(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$100(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->onHiddenChanged(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;->access$002(Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;I)I

    :cond_2
    return-void
.end method
