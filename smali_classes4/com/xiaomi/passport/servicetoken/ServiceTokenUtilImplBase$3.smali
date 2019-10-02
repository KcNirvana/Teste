.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;
.super Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;
.source "ServiceTokenUtilImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->canAccessAccount(Landroid/content/Context;)Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public doWork()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->this$0:Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->canAccessAccountImpl(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doWork()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$3;->doWork()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object v0

    return-object v0
.end method
