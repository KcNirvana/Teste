.class Lcom/xiaomi/push/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/c/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/c/i;->a:Lcom/xiaomi/push/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/c/i;->a:Lcom/xiaomi/push/c/h;

    invoke-static {v0}, Lcom/xiaomi/push/c/h;->a(Lcom/xiaomi/push/c/h;)V

    return-void
.end method
