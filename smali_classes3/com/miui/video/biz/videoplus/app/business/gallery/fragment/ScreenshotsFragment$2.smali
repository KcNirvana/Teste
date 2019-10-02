.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$2;
.super Ljava/lang/Object;
.source "ScreenshotsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->initViewsEvent()V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    const-string v0, "KEY_EDIT_MODE_EXIT"

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    const-string v2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p1, v2, v1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
