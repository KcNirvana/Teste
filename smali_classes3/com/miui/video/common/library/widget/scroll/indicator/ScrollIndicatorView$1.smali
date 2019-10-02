.class Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$300(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$300(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$402(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;F)F

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$500(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$600(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$500(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$500(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$702(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;Landroid/view/View;)Landroid/view/View;

    :cond_1
    return-void
.end method
