.class final Lcom/miui/antispam/ui/activity/Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

.field final synthetic Vs:Z


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    iput-boolean p2, p0, Lcom/miui/antispam/ui/activity/Z;->Vs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UJ(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UM(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v5

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v4}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UL(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UI(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "*"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UG(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    new-array v1, v6, [Ljava/lang/String;

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v4}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UN(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)I

    move-result v4

    iget-boolean v7, p0, Lcom/miui/antispam/ui/activity/Z;->Vs:Z

    if-eqz v7, :cond_4

    :goto_2
    invoke-static/range {v0 .. v5}, Lcom/miui/antispam/util/h;->XN(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->finish()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UM(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UJ(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    move v2, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, ""

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vs:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v5}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UN(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)I

    move-result v5

    invoke-static {v1, v4, v5}, Lmiui/provider/ExtraTelephony;->isInBlacklist(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    :goto_4
    iget-object v5, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v5}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UK(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :cond_6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "number"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "display_number"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "state"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "sync_dirty"

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v4}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UO(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v4}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UG(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    iget-object v5, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v5}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UN(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)I

    move-result v5

    invoke-static {v1, v4, v5}, Lmiui/provider/ExtraTelephony;->isInWhiteList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/Z;->Vr:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->UO(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)I

    move-result v0

    goto :goto_5

    :cond_9
    move v2, v5

    goto/16 :goto_0
.end method
