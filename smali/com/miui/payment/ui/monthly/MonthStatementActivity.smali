.class public Lcom/miui/payment/ui/monthly/MonthStatementActivity;
.super Lmiui/app/Activity;
.source "MonthStatementActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MonthStatementActivity"


# instance fields
.field private mStatementLayout:Lcom/miui/payment/ui/monthly/MonthStatementLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private loadMonthStatement()V
    .locals 2

    const-string/jumbo v0, "MonthStatementActivity"

    const-string/jumbo v1, "loadMonthStatement"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementActivity;->mStatementLayout:Lcom/miui/payment/ui/monthly/MonthStatementLayout;

    invoke-virtual {v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->loadDefaultMonthStatement()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b0400d4

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthStatementActivity;->setContentView(I)V

    const v0, 0x1b09030d

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementActivity;->mStatementLayout:Lcom/miui/payment/ui/monthly/MonthStatementLayout;

    const-string/jumbo v0, "finance_report_click"

    invoke-static {v0}, Lcom/miui/payment/utils/StatUtil;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthStatementActivity;->loadMonthStatement()V

    return-void
.end method
