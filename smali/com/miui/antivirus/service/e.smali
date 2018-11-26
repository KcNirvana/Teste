.class final Lcom/miui/antivirus/service/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic avj:Lcom/miui/antivirus/service/d;

.field final synthetic avk:Lcom/miui/guardprovider/aidl/UpdateInfo;

.field final synthetic avl:Lcom/miui/antivirus/k;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/d;Lcom/miui/guardprovider/aidl/UpdateInfo;Lcom/miui/antivirus/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/e;->avj:Lcom/miui/antivirus/service/d;

    iput-object p2, p0, Lcom/miui/antivirus/service/e;->avk:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iput-object p3, p0, Lcom/miui/antivirus/service/e;->avl:Lcom/miui/antivirus/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/service/e;->avk:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget v0, v0, Lcom/miui/guardprovider/aidl/UpdateInfo;->akC:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/e;->avk:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget v0, v0, Lcom/miui/guardprovider/aidl/UpdateInfo;->akC:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/service/e;->avl:Lcom/miui/antivirus/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/antivirus/service/e;->avk:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v1, v1, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/antivirus/k;->aEj(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/service/e;->avl:Lcom/miui/antivirus/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/antivirus/k;->aEk(J)V

    iget-object v0, p0, Lcom/miui/antivirus/service/e;->avk:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v0, v0, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    const-string/jumbo v1, "success"

    invoke-static {v0, v1}, Lcom/miui/antivirus/a/d;->azr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/service/e;->avk:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget v0, v0, Lcom/miui/guardprovider/aidl/UpdateInfo;->akC:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/service/e;->avk:Lcom/miui/guardprovider/aidl/UpdateInfo;

    iget-object v0, v0, Lcom/miui/guardprovider/aidl/UpdateInfo;->akB:Ljava/lang/String;

    const-string/jumbo v1, "fail"

    invoke-static {v0, v1}, Lcom/miui/antivirus/a/d;->azr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
