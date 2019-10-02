.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;
.super Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/UIGalleryPosterThreeColumn;
.source "ScreenshotsFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->lambda$initViewsValue$22(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/UIGalleryPosterThreeColumn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method public exitEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    const-string v1, "KEY_EDIT_MODE_EXIT"

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Ljava/lang/String;)V

    return-void
.end method

.method public isEditModeEquals(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCheckedChange()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->getItemEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->getItemEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->getItemEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Lcom/miui/video/framework/impl/IUIListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Lcom/miui/video/framework/impl/IUIListener;

    move-result-object v0

    const-string v1, "KEY_EDIT_MODE_CHECKED_CHANGE"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public openEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    const-string v1, "KEY_EDIT_MODE_OPEN"

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment$1;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->mMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;Ljava/lang/String;)V

    return-void
.end method
