.class public Lcom/ali/user/mobile/register/TaoUrlSpan;
.super Landroid/text/style/URLSpan;
.source "TaoUrlSpan.java"


# instance fields
.field context:Landroid/content/Context;

.field private mSeed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->mSeed:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->mSeed:Ljava/lang/String;

    iput-object p2, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->mSeed:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "url"

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "dt"

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_protocol:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->mSeed:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "UC-ZC-161225-02"

    iget-object v2, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->mSeed:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->context:Landroid/content/Context;

    const-class v3, Lcom/ali/user/mobile/h5/AliuserWebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/TaoUrlSpan;->context:Landroid/content/Context;

    return-object p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
