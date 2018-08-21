.class public Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;
.super Lmiui/app/AlertDialog;
.source "UpgradeDialog.java"


# instance fields
.field private mBody:Landroid/widget/TextView;

.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v2, 0x0

    const v1, 0x1b0b043b

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x1b040031

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0900f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->mBody:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->setView(Landroid/view/View;)V

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->mContext:Landroid/content/Context;

    const v4, 0x1b0b0438

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v2

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v1}, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->mContext:Landroid/content/Context;

    const v3, 0x1b0b043c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setBodyMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/UpgradeDialog;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
