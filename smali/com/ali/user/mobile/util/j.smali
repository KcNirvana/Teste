.class public Lcom/ali/user/mobile/util/j;
.super Ljava/lang/Object;
.source "RsaUtils.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/g/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ali/user/mobile/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
