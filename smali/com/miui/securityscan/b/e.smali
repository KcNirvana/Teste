.class final Lcom/miui/securityscan/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Js:Lcom/miui/securityscan/b/c;

.field final synthetic Jt:Ljava/lang/String;

.field final synthetic Ju:Z


# direct methods
.method constructor <init>(Lcom/miui/securityscan/b/c;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/b/e;->Js:Lcom/miui/securityscan/b/c;

    iput-object p2, p0, Lcom/miui/securityscan/b/e;->Jt:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/securityscan/b/e;->Ju:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/b/e;->Js:Lcom/miui/securityscan/b/c;

    invoke-static {v0}, Lcom/miui/securityscan/b/c;->JV(Lcom/miui/securityscan/b/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/b/e;->Jt:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/securityscan/b/e;->Ju:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SharedPreferenceHelper"

    const-string/jumbo v2, "saveInThread boolean:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
