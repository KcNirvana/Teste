.class Lcom/xiaomi/accountsdk/futureservice/ClientFuture$2;
.super Ljava/lang/Object;
.source "ClientFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/ClientFuture$2;->this$0:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ClientFuture$2;->this$0:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->access$000(Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ClientFuture$2;->this$0:Lcom/xiaomi/accountsdk/futureservice/ClientFuture;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;->call(Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    return-void
.end method
