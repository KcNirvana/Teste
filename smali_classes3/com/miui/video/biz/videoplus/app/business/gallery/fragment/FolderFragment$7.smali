.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$7;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    const-string v0, "KEY_EDIT_MODE_EXIT"

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    const-string v0, "KEY_EDIT_MODE_EXIT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
