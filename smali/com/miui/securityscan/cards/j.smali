.class Lcom/miui/securityscan/cards/j;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic BA:Lcom/miui/securityscan/cards/i;


# direct methods
.method private constructor <init>(Lcom/miui/securityscan/cards/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/cards/j;->BA:Lcom/miui/securityscan/cards/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/securityscan/cards/i;Lcom/miui/securityscan/cards/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/cards/j;-><init>(Lcom/miui/securityscan/cards/i;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/miui/securityscan/cards/j;->BA:Lcom/miui/securityscan/cards/i;

    invoke-static {v1}, Lcom/miui/securityscan/cards/i;->Dn(Lcom/miui/securityscan/cards/i;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/miui/securityscan/cards/j;->BA:Lcom/miui/securityscan/cards/i;

    invoke-static {v1, v0}, Lcom/miui/securityscan/cards/i;->Do(Lcom/miui/securityscan/cards/i;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/securityscan/cards/j;->BA:Lcom/miui/securityscan/cards/i;

    invoke-static {v1}, Lcom/miui/securityscan/cards/i;->Dn(Lcom/miui/securityscan/cards/i;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/cards/f;->CN(Ljava/lang/String;)V

    goto :goto_0
.end method
