.class Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->initViewsEvent()V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v2, "ScreenshotsFragment"

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getmViews()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getViewPosition()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    if-eqz p1, :cond_0

    const-string v2, "KEY_EDIT_EVENT_SHARE"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v2, "FolderFragment"

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    if-eqz p1, :cond_1

    const-string v2, "KEY_EDIT_EVENT_SHARE"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTab()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v2, "TimeFragment"

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    if-eqz p1, :cond_2

    const-string v2, "KEY_EDIT_EVENT_SHARE"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
