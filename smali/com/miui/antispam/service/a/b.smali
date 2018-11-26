.class final Lcom/miui/antispam/service/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aad:Lcom/miui/antispam/service/a/a;


# direct methods
.method constructor <init>(Lcom/miui/antispam/service/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/a/b;->aad:Lcom/miui/antispam/service/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "CloudPhoneListService"

    const-string/jumbo v1, "start doUpdate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antispam/service/a/b;->aad:Lcom/miui/antispam/service/a/a;

    invoke-virtual {v0}, Lcom/miui/antispam/service/a/a;->acW()Z

    const-string/jumbo v0, "CloudPhoneListService"

    const-string/jumbo v1, "end doUpdate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antispam/service/a/b;->aad:Lcom/miui/antispam/service/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antispam/service/a/a;->acZ(Lcom/miui/antispam/service/a/a;Z)V

    return-void
.end method
