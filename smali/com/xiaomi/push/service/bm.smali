.class Lcom/xiaomi/push/service/bm;
.super Lcom/xiaomi/g/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/bm;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/g/b;-><init>(Ljava/util/Map;ILjava/lang/String;Lcom/xiaomi/g/e;)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/d/b$b;

    invoke-direct {v0}, Lcom/xiaomi/push/d/b$b;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/bb;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/d/b$b;->a(I)Lcom/xiaomi/push/d/b$b;

    invoke-virtual {v0}, Lcom/xiaomi/push/d/b$b;->c()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOBBString err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
