.class public Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;
.super Ljava/lang/Object;
.source "ColorBar.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;


# instance fields
.field protected color:I

.field protected gravity:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

.field protected height:I

.field protected view:Landroid/view/View;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;-><init>(Landroid/content/Context;IILcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->view:Landroid/view/View;

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->color:I

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iput p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->height:I

    iput-object p4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->gravity:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->color:I

    return v0
.end method

.method public getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->gravity:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method

.method public getHeight(I)I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->height:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->height:I

    return p1
.end method

.method public getSlideView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->width:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->width:I

    return p1
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->color:I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setGravity(Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->gravity:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ColorBar;->width:I

    return-void
.end method
