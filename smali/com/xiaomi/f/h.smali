.class Lcom/xiaomi/f/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/xiaomi/f/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/f/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    invoke-static {v0}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/f/g;)Lcom/xiaomi/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/f/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/f/g;->c(ILjava/lang/Exception;)V

    goto :goto_0
.end method
