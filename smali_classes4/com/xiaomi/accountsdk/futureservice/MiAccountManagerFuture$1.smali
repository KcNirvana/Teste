.class Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;
.super Ljava/lang/Object;
.source "MiAccountManagerFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;->start()Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;->this$0:Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;->this$0:Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;->this$0:Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;->doWork()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;->setServerData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture$1;->this$0:Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;->setServerSideThrowable(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
