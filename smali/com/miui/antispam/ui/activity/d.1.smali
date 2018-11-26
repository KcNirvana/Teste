.class Lcom/miui/antispam/ui/activity/d;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic Sy:Lcom/miui/antispam/ui/activity/KeywordListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/d;->Sy:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Lcom/miui/antispam/ui/activity/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/d;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/d;->Sy:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TG(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/d;->Sy:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TG(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/d;->Sy:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/d;->Sy:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/d;->Sy:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const v0, 0x7f07005f

    invoke-virtual {v3, v0, v4}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TL(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/d;->Sy:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TG(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
