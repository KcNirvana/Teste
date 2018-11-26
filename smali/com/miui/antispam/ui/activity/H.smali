.class final Lcom/miui/antispam/ui/activity/H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

.field final synthetic UF:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/H;->UF:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/H;->UF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TF(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const v0, 0x7f07005f

    invoke-virtual {v2, v0, v3}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v3}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TJ(Lcom/miui/antispam/ui/activity/KeywordListActivity;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/H;->UE:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
