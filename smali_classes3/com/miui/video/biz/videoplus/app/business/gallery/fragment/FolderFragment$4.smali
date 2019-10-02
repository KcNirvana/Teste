.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;
.super Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;
.source "FolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->lambda$initViewsValue$39(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method public exitEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    const-string v1, "KEY_EDIT_MODE_EXIT"

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Ljava/lang/String;)V

    return-void
.end method

.method public isEditModeEquals(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCheckedChange()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->getItemEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->getItemEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->getItemEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$plurals;->plus_edit_top_titletext:I

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v5}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$600(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Lcom/miui/video/framework/impl/IUIListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$600(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Lcom/miui/video/framework/impl/IUIListener;

    move-result-object v0

    const-string v1, "KEY_EDIT_MODE_CHECKED_CHANGE"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$500(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v6, v2}, Lcom/miui/video/framework/impl/IUIListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public openEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    const-string v1, "KEY_EDIT_MODE_OPEN"

    iput-object v1, v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->mMode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Ljava/lang/String;)V

    return-void
.end method
