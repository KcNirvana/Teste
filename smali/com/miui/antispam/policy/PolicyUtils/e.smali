.class final Lcom/miui/antispam/policy/PolicyUtils/e;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic YF:Lcom/miui/antispam/policy/PolicyUtils/b;


# direct methods
.method constructor <init>(Lcom/miui/antispam/policy/PolicyUtils/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/policy/PolicyUtils/e;->YF:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/miui/antispam/policy/PolicyUtils/e;->YF:Lcom/miui/antispam/policy/PolicyUtils/b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/e;->YF:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-static {v0}, Lcom/miui/antispam/policy/PolicyUtils/b;->WZ(Lcom/miui/antispam/policy/PolicyUtils/b;)V

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/e;->YF:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-static {v0}, Lcom/miui/antispam/policy/PolicyUtils/b;->WY(Lcom/miui/antispam/policy/PolicyUtils/b;)V

    iget-object v2, p0, Lcom/miui/antispam/policy/PolicyUtils/e;->YF:Lcom/miui/antispam/policy/PolicyUtils/b;

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/e;->YF:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-static {v0}, Lcom/miui/antispam/policy/PolicyUtils/b;->WW(Lcom/miui/antispam/policy/PolicyUtils/b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/antispam/db/a;->Zp()Z

    move-result v0

    :goto_0
    invoke-static {v2, v0}, Lcom/miui/antispam/policy/PolicyUtils/b;->WX(Lcom/miui/antispam/policy/PolicyUtils/b;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
