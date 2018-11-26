.class final Lcom/miui/antispam/ui/activity/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic UD:Lcom/miui/antispam/ui/activity/KeywordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/G;->UD:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/G;->UD:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TF(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/G;->UD:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TK(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/G;->UD:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/G;->UD:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TJ(Lcom/miui/antispam/ui/activity/KeywordListActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
