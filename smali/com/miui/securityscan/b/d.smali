.class final Lcom/miui/securityscan/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Jp:Lcom/miui/securityscan/b/c;

.field final synthetic Jq:Ljava/lang/String;

.field final synthetic Jr:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/b/c;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/b/d;->Jp:Lcom/miui/securityscan/b/c;

    iput-object p2, p0, Lcom/miui/securityscan/b/d;->Jq:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/securityscan/b/d;->Jr:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/b/d;->Jp:Lcom/miui/securityscan/b/c;

    invoke-static {v0}, Lcom/miui/securityscan/b/c;->JV(Lcom/miui/securityscan/b/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/b/d;->Jq:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/securityscan/b/d;->Jr:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SharedPreferenceHelper"

    const-string/jumbo v2, "saveInThread Set<String>:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
