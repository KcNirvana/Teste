.class Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;
.super Ljava/lang/Object;
.source "FileBrowseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;->showPrevious()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$210(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserUtils;->getRootDirContent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$302(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowserAdapter;->setGroup(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$210(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)I

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;->access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FileBrowseView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/interfaces/IViewSwitcherListener;->showPrevious()V

    :cond_3
    :goto_0
    return-void
.end method
