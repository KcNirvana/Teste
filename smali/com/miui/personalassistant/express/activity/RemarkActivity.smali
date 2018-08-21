.class public Lcom/miui/personalassistant/express/activity/RemarkActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "RemarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemarkActivity"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mRemark:Ljava/lang/String;

.field private mRemarkView:Landroid/widget/EditText;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private doRemark()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemarkView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemarkView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemarkView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/express/activity/RemarkActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/express/activity/RemarkActivity$2;-><init>(Lcom/miui/personalassistant/express/activity/RemarkActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/express/activity/RemarkActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/express/activity/RemarkActivity$1;-><init>(Lcom/miui/personalassistant/express/activity/RemarkActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->finish()V

    const/4 v0, 0x0

    const v1, 0x1b05000f

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemarkView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/express/db/Cache;->setRemark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mKey:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/miui/personalassistant/express/db/Cache;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setRemark(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/util/PersonalAssistantUtil;->updateExpressCard()V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "order_remark"

    iget-object v4, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v2}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, -0x2

    if-ne p2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "order_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "order_remark"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    const v0, 0x1b04007c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemarkView:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/RemarkActivity;->doRemark()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/RemarkActivity;->mRemark:Ljava/lang/String;

    goto :goto_0
.end method
