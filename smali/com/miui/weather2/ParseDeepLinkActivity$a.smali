.class Lcom/miui/weather2/ParseDeepLinkActivity$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ParseDeepLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/weather2/structures/Alert;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ParseDeepLinkActivity;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/weather2/ParseDeepLinkActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->a:Lcom/miui/weather2/ParseDeepLinkActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Alert;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Alert;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->b:Landroid/content/Context;

    const-class v2, Lcom/miui/weather2/ActivityAlertDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "intent_key_alertdata"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "city_id"

    iget-object v2, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "city_name"

    iget-object v2, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/weather2/ParseDeepLinkActivity$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/ParseDeepLinkActivity$a;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/weather2/ParseDeepLinkActivity$a;->a(Ljava/util/ArrayList;)V

    return-void
.end method
