.class Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$2;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
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

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$2;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$2;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->access$000(Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$2;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator$2;->this$0:Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->access$300(Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
