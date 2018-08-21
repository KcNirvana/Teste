.class public Lcom/miui/personalassistant/ui/CTADialogActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "CTADialogActivity.java"


# instance fields
.field private mCTADialog:Lcom/miui/personalassistant/ui/widget/CTADialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private showCTADialog(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/ui/widget/CTADialog;

    new-instance v1, Lcom/miui/personalassistant/ui/CTADialogActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/CTADialogActivity$1;-><init>(Lcom/miui/personalassistant/ui/CTADialogActivity;)V

    invoke-direct {v0, p1, v1}, Lcom/miui/personalassistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/CTADialog$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/CTADialogActivity;->mCTADialog:Lcom/miui/personalassistant/ui/widget/CTADialog;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/CTADialogActivity;->mCTADialog:Lcom/miui/personalassistant/ui/widget/CTADialog;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->finish()V

    const/4 v0, 0x0

    const v1, 0x1b05000f

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/ui/CTADialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0, p0}, Lcom/miui/personalassistant/ui/CTADialogActivity;->showCTADialog(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/miui/personalassistant/ui/widget/CTADialog;->dismiss()V

    return-void
.end method
