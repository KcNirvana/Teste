.class public Lcom/flybird/FBButton;
.super Lcom/flybird/FBLabel;
.source "FBButton.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mColor:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 2

    new-instance v0, Lcom/flybird/FBBorderButton;

    invoke-direct {v0, p1}, Lcom/flybird/FBBorderButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/flybird/FBLabel;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flybird/FBButton;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    iget-object v0, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateTextColor()V
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    invoke-static {v1}, Lcom/flybird/FBTools;->genTextSelector([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method public doDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/flybird/FBLabel;->doDestroy()V

    iput-object v0, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    return-void
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-direct {p0}, Lcom/flybird/FBButton;->updateTextColor()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "color:active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-direct {p0}, Lcom/flybird/FBButton;->updateTextColor()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "color:disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBButton;->mColor:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-direct {p0}, Lcom/flybird/FBButton;->updateTextColor()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/flybird/FBButton;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/flybird/FBLabel;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
