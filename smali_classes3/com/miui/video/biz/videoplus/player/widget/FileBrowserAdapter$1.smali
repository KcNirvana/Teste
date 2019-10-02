.class Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$1;
.super Ljava/lang/Object;
.source "FileBrowserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

.field final synthetic val$wrapper:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$1;->val$wrapper:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$1;->val$wrapper:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$1;->this$0:Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;->access$000(Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter;)Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserAdapter$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    return-void
.end method
