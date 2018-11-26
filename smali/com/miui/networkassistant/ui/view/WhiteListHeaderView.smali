.class public Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/view/BindableView;


# instance fields
.field private mHeaderTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public fillData(Lcom/miui/networkassistant/model/WhiteGroupHeader;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;->mHeaderTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public fillData(Lcom/miui/networkassistant/model/WhiteGroupHeader;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic fillData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;->fillData(Lcom/miui/networkassistant/model/WhiteGroupHeader;)V

    return-void
.end method

.method public bridge synthetic fillData(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;->fillData(Lcom/miui/networkassistant/model/WhiteGroupHeader;Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/WhiteListHeaderView;->mHeaderTitleView:Landroid/widget/TextView;

    return-void
.end method
