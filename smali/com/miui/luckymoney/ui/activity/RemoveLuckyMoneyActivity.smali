.class public Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->removeLuckyMoney()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private removeLuckyMoney()V
    .locals 4

    const-string/jumbo v0, "com.miui.luckymoney"

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.miui.luckymoney"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/d/a/a;->btZ(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V

    const v2, 0x7f0701c1

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V

    const v2, 0x7f0701c2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
