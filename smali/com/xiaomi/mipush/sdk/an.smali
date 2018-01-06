.class public Lcom/xiaomi/mipush/sdk/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/xiaomi/push/service/b/b;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/push/service/b/b;->a:Lcom/xiaomi/push/service/b/b;

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/an;->a:Lcom/xiaomi/push/service/b/b;

    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/an;->b:Z

    iput-boolean v1, p0, Lcom/xiaomi/mipush/sdk/an;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/push/service/b/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/an;->a:Lcom/xiaomi/push/service/b/b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/an;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/an;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PushConfiguration{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Region:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/an;->a:Lcom/xiaomi/push/service/b/b;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/an;->a:Lcom/xiaomi/push/service/b/b;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/b/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
