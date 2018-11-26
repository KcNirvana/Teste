.class final Lcom/miui/antispam/ui/b/t;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Xz:Lcom/miui/antispam/ui/b/d;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    iput-object p2, p0, Lcom/miui/antispam/ui/b/t;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected Wp(Landroid/util/Pair;)V
    .locals 3

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v2}, Lcom/miui/antispam/ui/b/d;->VT(Lcom/miui/antispam/ui/b/d;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/d;->VS(Lcom/miui/antispam/ui/b/d;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/d;->VS(Lcom/miui/antispam/ui/b/d;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/d;->VS(Lcom/miui/antispam/ui/b/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v0}, Lcom/miui/antispam/ui/b/d;->VU(Lcom/miui/antispam/ui/b/d;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/miui/antispam/ui/b/t;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v3}, Lcom/miui/antispam/ui/b/d;->VU(Lcom/miui/antispam/ui/b/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/antispam/util/h;->XX(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/antispam/ui/b/t;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v4}, Lcom/miui/antispam/ui/b/d;->VU(Lcom/miui/antispam/ui/b/d;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v1}, Lcom/miui/antispam/ui/b/d;->VV(Lcom/miui/antispam/ui/b/d;)I

    move-result v1

    if-ne v1, v6, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v1}, Lcom/miui/antispam/ui/b/d;->VU(Lcom/miui/antispam/ui/b/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    :cond_1
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/miui/antispam/ui/b/t;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v4}, Lcom/miui/antispam/ui/b/d;->VU(Lcom/miui/antispam/ui/b/d;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->isYellowPage()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v1}, Lcom/miui/antispam/ui/b/d;->VV(Lcom/miui/antispam/ui/b/d;)I

    move-result v1

    if-ne v1, v6, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v1}, Lcom/miui/antispam/ui/b/d;->VU(Lcom/miui/antispam/ui/b/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->isUserMarked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/antispam/ui/b/t;->val$context:Landroid/content/Context;

    const v3, 0x7f07003e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->getMarkedCount()I

    move-result v0

    iget-object v3, p0, Lcom/miui/antispam/ui/b/t;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0c0003

    invoke-virtual {v3, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/miui/antispam/ui/b/t;->Xz:Lcom/miui/antispam/ui/b/d;

    invoke-static {v3}, Lcom/miui/antispam/ui/b/d;->VV(Lcom/miui/antispam/ui/b/d;)I

    move-result v3

    if-eq v3, v6, :cond_8

    iget-object v1, p0, Lcom/miui/antispam/ui/b/t;->val$context:Landroid/content/Context;

    const v3, 0x7f070035

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto/16 :goto_0

    :cond_9
    move-object v1, v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/b/t;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/b/t;->Wp(Landroid/util/Pair;)V

    return-void
.end method
