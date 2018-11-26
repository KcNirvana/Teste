.class public Lcom/miui/antivirus/whitelist/WhiteListHeaderView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/antivirus/whitelist/WhiteListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/antivirus/whitelist/WhiteListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public aAO(Lcom/miui/common/d/f;)V
    .locals 0

    return-void
.end method

.method public aAP(Lcom/miui/antivirus/whitelist/i;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListHeaderView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/whitelist/i;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListHeaderView;->mTitleView:Landroid/widget/TextView;

    return-void
.end method
