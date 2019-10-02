.class Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UIRefreshHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
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

    iput-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$1;->this$0:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader$1;->this$0:Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;->access$000(Lcom/miui/video/biz/ugc/widget/UIRefreshHeader;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
