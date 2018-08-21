.class public Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;
.super Landroid/widget/RelativeLayout;
.source "DetailBackgroundPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;,
        Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;
    }
.end annotation


# instance fields
.field private mBgSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;

.field private mColorSelected:Ljava/lang/String;

.field private mIvBlack:Landroid/widget/ImageView;

.field private mIvGreen:Landroid/widget/ImageView;

.field private mIvWhite:Landroid/widget/ImageView;

.field private mIvYellow:Landroid/widget/ImageView;

.field private mLlContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private clearIconsBg()V
    .locals 2

    const v1, 0x106000d

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvYellow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvGreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvBlack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x1b0903bb

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b0903bc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b0903bd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvWhite:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b0903be

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b0903bf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvYellow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b0903c0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b0903c1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvGreen:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b0903c2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mLlContainer:Landroid/widget/LinearLayout;

    const v1, 0x1b0903c3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvBlack:Landroid/widget/ImageView;

    return-void
.end method

.method private notifyParent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mBgSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mBgSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;->onBackgoundSelected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateSelectedIcons(Ljava/lang/String;)V
    .locals 2

    const v1, 0x1b0200f7

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mColorSelected:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->clearIconsBg()V

    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->white:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->notifyParent(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->yellow:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvYellow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->green:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvGreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->black:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mIvBlack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getBgSelectedListener()Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mBgSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;

    return-object v0
.end method

.method public getColorSelected()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mColorSelected:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->white:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->updateSelectedIcons(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->yellow:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->updateSelectedIcons(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->green:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->updateSelectedIcons(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->black:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$BG_COLOR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->updateSelectedIcons(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b0903bc
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->initView()V

    return-void
.end method

.method public setBgSelectedListener(Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mBgSelectedListener:Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel$DatailBgSelectedListener;

    return-void
.end method

.method public setColorSelected(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->mColorSelected:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/widget/DetailBackgroundPanel;->updateSelectedIcons(Ljava/lang/String;)V

    return-void
.end method
