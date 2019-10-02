.class Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    iput-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$302(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
