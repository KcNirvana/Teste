.class final Lcom/miui/antispam/ui/activity/F;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic UA:Lcom/miui/antispam/ui/activity/g;

.field final synthetic UB:Landroid/util/SparseBooleanArray;

.field final synthetic UC:[J


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/g;Landroid/util/SparseBooleanArray;[J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/F;->UA:Lcom/miui/antispam/ui/activity/g;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/F;->UB:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/miui/antispam/ui/activity/F;->UC:[J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/F;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/F;->UB:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/F;->UB:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/F;->UA:Lcom/miui/antispam/ui/activity/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TI(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/ResourceCursorAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/F;->UB:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/F;->UA:Lcom/miui/antispam/ui/activity/g;

    iget-object v3, v3, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v3}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TF(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/util/HashSet;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/F;->UC:[J

    array-length v0, v0

    if-ge v2, v0, :cond_3

    sget-object v0, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/F;->UC:[J

    aget-wide v4, v1, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/F;->UA:Lcom/miui/antispam/ui/activity/g;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TD(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/F;->UA:Lcom/miui/antispam/ui/activity/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TD(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/F;->UA:Lcom/miui/antispam/ui/activity/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TD(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/F;->UA:Lcom/miui/antispam/ui/activity/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TD(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/F;->UA:Lcom/miui/antispam/ui/activity/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TD(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
