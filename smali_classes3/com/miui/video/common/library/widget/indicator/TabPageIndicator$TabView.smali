.class Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    sget p1, Lcom/miui/video/common/library/R$attr;->vpiTabPageIndicatorStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->mIndex:I

    return p1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->mIndex:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$500(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$500(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->this$0:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;

    invoke-static {p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->access$500(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    :cond_0
    return-void
.end method
