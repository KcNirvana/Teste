.class final Lcom/miui/securityscan/d/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/d/o;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/d/o;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/x;->hD(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v2, "game_click"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "old_user"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "game_homepage_action"

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Lc(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v0, "new_user"

    goto :goto_0
.end method
