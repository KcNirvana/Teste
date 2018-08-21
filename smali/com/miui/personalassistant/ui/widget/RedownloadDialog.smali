.class public Lcom/miui/personalassistant/ui/widget/RedownloadDialog;
.super Ljava/lang/Object;
.source "RedownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;
    }
.end annotation


# instance fields
.field private mConfirmString:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogBuilder:Lmiui/app/AlertDialog$Builder;

.field private mListener:Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;

.field private mRe:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mContent:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mRe:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mConfirmString:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mListener:Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/widget/RedownloadDialog;)Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mListener:Lcom/miui/personalassistant/ui/widget/RedownloadDialog$IOnClickListener;

    return-object v0
.end method

.method private showDialog(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mConfirmString:Ljava/lang/String;

    new-instance v2, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$4;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$4;-><init>(Lcom/miui/personalassistant/ui/widget/RedownloadDialog;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$3;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$3;-><init>(Lcom/miui/personalassistant/ui/widget/RedownloadDialog;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$2;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$2;-><init>(Lcom/miui/personalassistant/ui/widget/RedownloadDialog;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public show()V
    .locals 6

    const/16 v5, 0x8

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1b040076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x1b0901f2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mRe:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mRe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    new-instance v2, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog$1;-><init>(Lcom/miui/personalassistant/ui/widget/RedownloadDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v2, 0x1b0900a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/widget/RedownloadDialog;->showDialog(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
