.class final Lcom/miui/antispam/ui/activity/V;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Vh:Lcom/miui/antispam/ui/activity/k;

.field final synthetic Vi:I

.field final synthetic Vj:J


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/k;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/V;->Vh:Lcom/miui/antispam/ui/activity/k;

    iput p2, p0, Lcom/miui/antispam/ui/activity/V;->Vi:I

    iput-wide p3, p0, Lcom/miui/antispam/ui/activity/V;->Vj:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/V;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcom/miui/antispam/ui/activity/V;->Vi:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/antispam/ui/activity/V;->Vi:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "sync_dirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/V;->Vh:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v1}, Lcom/miui/antispam/ui/activity/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/miui/antispam/ui/activity/V;->Vj:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/V;->Vh:Lcom/miui/antispam/ui/activity/k;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/k;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/miui/antispam/ui/activity/V;->Vj:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
