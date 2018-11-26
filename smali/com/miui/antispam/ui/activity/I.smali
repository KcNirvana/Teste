.class final Lcom/miui/antispam/ui/activity/I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UG:Lcom/miui/antispam/ui/activity/KeywordListActivity;

.field final synthetic UH:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/I;->UG:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/I;->UH:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/I;->UH:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, ",|\uff0c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/I;->UG:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0, v3}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TM(Lcom/miui/antispam/ui/activity/KeywordListActivity;Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/I;->UG:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/I;->UG:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/I;->UG:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/I;->UG:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v3, 0x7f07005e

    invoke-virtual {v2, v3}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
