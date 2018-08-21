.class public Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;
.super Landroid/widget/TextView;
.source "StockChangeTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setTextColor(IZ)V
    .locals 3

    if-nez p1, :cond_0

    move v0, p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;->setTextColor(I)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0f0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public setText(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;->setTextColor(IZ)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/widget/StockChangeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
