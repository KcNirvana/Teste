.class public Lcom/flybird/FBBorderInput;
.super Landroid/widget/EditText;
.source "FBBorderInput.java"

# interfaces
.implements Lcom/flybird/IBorderable;


# instance fields
.field private mBorderHelper:Lcom/alipay/birdnest/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    new-instance v0, Lcom/alipay/birdnest/a/a;

    invoke-direct {v0}, Lcom/alipay/birdnest/a/a;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    new-instance v0, Lcom/alipay/birdnest/a/a;

    invoke-direct {v0}, Lcom/alipay/birdnest/a/a;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    new-instance v0, Lcom/alipay/birdnest/a/a;

    invoke-direct {v0}, Lcom/alipay/birdnest/a/a;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0}, Lcom/alipay/birdnest/a/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/a/a;->b(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/a/a;->a(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBorder(II)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/birdnest/a/a;->a(II)V

    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBBorderInput;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/a/a;->a(I)V

    return-void
.end method

.method public setBorderRadiusArray([F)V
    .locals 0

    return-void
.end method
