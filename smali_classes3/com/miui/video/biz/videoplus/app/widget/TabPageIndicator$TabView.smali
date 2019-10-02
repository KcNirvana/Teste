.class public Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;
.super Landroid/widget/TextView;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TabView"
.end annotation


# instance fields
.field private mColorEntity:Lcom/miui/video/base/common/entity/ColorEntity;

.field private final mDefaultColos:Landroid/content/res/ColorStateList;

.field private mIndex:I

.field private mWidth:I

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    sget p1, Lcom/miui/video/biz/videoplus/R$attr;->vpiTabPageIndicatorStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_67:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->mWidth:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->mDefaultColos:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setPadding(IIII)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setGravity(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->mIndex:I

    return p1
.end method


# virtual methods
.method public getColorEntity()Lcom/miui/video/base/common/entity/ColorEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->mColorEntity:Lcom/miui/video/base/common/entity/ColorEntity;

    return-object v0
.end method

.method public getDefaultColos()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->mDefaultColos:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->mIndex:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->access$300(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getMeasuredWidth()I

    move-result p1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->access$300(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)I

    move-result v1

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->this$0:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->access$300(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->mWidth:I

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorEntity(Lcom/miui/video/base/common/entity/ColorEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->mColorEntity:Lcom/miui/video/base/common/entity/ColorEntity;

    return-void
.end method
