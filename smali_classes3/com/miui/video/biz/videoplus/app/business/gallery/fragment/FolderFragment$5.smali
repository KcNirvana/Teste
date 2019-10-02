.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$5;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$000(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorTopIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment$5;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->access$100(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V

    const/4 p1, 0x0

    return p1
.end method
