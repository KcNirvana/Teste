.class Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;
.super Ljava/lang/Object;
.source "IconPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->animateToIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;

.field final synthetic val$iconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;

    iput-object p2, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->access$002(Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
