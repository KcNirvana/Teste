.class public Lcom/miui/powercenter/view/PowerCenterEditorTitleView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private aKa:Landroid/widget/Button;

.field private aKb:Landroid/widget/Button;

.field private aKc:Landroid/graphics/Rect;

.field private aKd:Landroid/widget/TextView;

.field private aKe:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKc:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKc:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public aUO()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKb:Landroid/widget/Button;

    return-object v0
.end method

.method public aUP()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKa:Landroid/widget/Button;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKd:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKb:Landroid/widget/Button;

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKa:Landroid/widget/Button;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKd:Landroid/widget/TextView;

    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKe:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKe:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKc:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKc:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKc:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKd:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKc:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKc:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/miui/powercenter/view/PowerCenterEditorTitleView;->aKc:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
