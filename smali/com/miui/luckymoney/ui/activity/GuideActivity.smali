.class public Lcom/miui/luckymoney/ui/activity/GuideActivity;
.super Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;
.source ""


# instance fields
.field private btnOpen:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/GuideActivity;->setContentView(I)V

    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity;->btnOpen:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity;->btnOpen:Landroid/widget/Button;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/GuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordGuidePage(Z)V

    return-void
.end method
