.class public Lcom/flybird/FBCheckbox;
.super Lcom/flybird/FBView;
.source "FBCheckbox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mNotify:Z

.field private mStateDrawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 2

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBCheckbox;->mNotify:Z

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Lcom/flybird/FBCheckbox;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/flybird/FBCheckbox$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBCheckbox$1;-><init>(Lcom/flybird/FBCheckbox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flybird/FBCheckbox;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBCheckbox;->mNotify:Z

    return v0
.end method

.method static synthetic access$100(Lcom/flybird/FBCheckbox;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public doDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    iput-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/flybird/FBCheckbox;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->onFocusChange(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/flybird/FBCheckbox;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/flybird/FBCheckbox;->mNeedHandleClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flybird/FBCheckbox;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "checked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/flybird/FBCheckbox;->mNotify:Z

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/flybird/FBCheckbox;->mNotify:Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2, v0}, Landroid/widget/CheckBox;->setTextSize(IF)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "background-image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_4
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static {p2, v0, v1, v1}, Lcom/alipay/birdnest/a/i;->a(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "background-image:checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_6
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static {p2, v0, v1, v1}, Lcom/alipay/birdnest/a/i;->a(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "background-image:disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_8
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static {p2, v0, v1, v1}, Lcom/alipay/birdnest/a/i;->a(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v2, [I

    const v3, -0x101009e

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->mStateDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
        -0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method
