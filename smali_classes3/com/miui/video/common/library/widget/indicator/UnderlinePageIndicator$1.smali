.class Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$1;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->access$000(Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->access$100(Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->access$200(Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->access$100(Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->invalidate()V

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$1;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
