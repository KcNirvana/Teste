.class Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UIRefreshHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$2;->this$0:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$2;->this$0:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$2;->this$0:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->access$100(Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$2;->this$0:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->access$100(Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
