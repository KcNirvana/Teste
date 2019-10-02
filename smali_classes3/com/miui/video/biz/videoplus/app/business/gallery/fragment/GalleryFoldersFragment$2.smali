.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$2;
.super Ljava/lang/Object;
.source "GalleryFoldersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)Lcom/miui/video/framework/impl/IActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;->LOADING_VIEW:Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$200(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher;->switchView(Lcom/miui/video/biz/videoplus/ui/UIViewSwitcher$ViewType;Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)Lcom/miui/video/framework/impl/IActionListener;

    move-result-object p1

    const-string v0, "com.miui.videoplus.ACTION_REFRESH"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
