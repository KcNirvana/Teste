.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;
.super Ljava/lang/Object;
.source "ScreenshotsFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorTopIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$300(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$plurals;->plus_edit_top_titletext:I

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setTitleText(Ljava/lang/String;)V

    return v5
.end method
