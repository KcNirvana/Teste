.class public Lcom/miui/gamebooster/customview/InCallNotificationView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private hu:Landroid/widget/ImageView;

.field private hv:Landroid/widget/TextView;

.field private hw:Landroid/widget/ImageView;

.field private hx:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->setClipToPadding(Z)V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic jY(Lcom/miui/gamebooster/customview/InCallNotificationView;)Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->hx:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/customview/InCallNotificationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public jW(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->hx:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    return-void
.end method

.method public jX(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->hv:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0245

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->hv:Landroid/widget/TextView;

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->hw:Landroid/widget/ImageView;

    const v0, 0x7f0a0246

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->hu:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/InCallNotificationView;->hw:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gamebooster/customview/i;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/customview/i;-><init>(Lcom/miui/gamebooster/customview/InCallNotificationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/customview/j;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/customview/j;-><init>(Lcom/miui/gamebooster/customview/InCallNotificationView;)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/customview/InCallNotificationView;->setVisibility(I)V

    :cond_0
    return-void
.end method
