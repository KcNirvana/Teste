.class Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$2;
.super Ljava/lang/Object;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$2;->this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$2;->this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->access$1400(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->dismiss(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$2;->this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "ScreenshotsFragment"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getmViews()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getViewPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    if-eqz v2, :cond_0

    const-string v3, "KEY_EDIT_EVENT_DELETE"

    invoke-virtual {v2, v3, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const-string v2, "KEY_EDIT_EVENT_DELETE"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$2;->this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v2, "FolderFragment"

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    if-eqz p1, :cond_1

    const-string v2, "KEY_EDIT_EVENT_DELETE"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5$2;->this$1:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;->this$0:Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v2, "TimeFragment"

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    if-eqz p1, :cond_2

    const-string v2, "KEY_EDIT_EVENT_DELETE"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
